Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Public Class AdminGuardianView
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        fillGridView()
    End Sub

    Private Sub fillGridView()
        Dim cmd As New SqlCommand
        Dim query As String = "select ward_id, guardian_name, address, guardian_contact from guardians, students where ward_id = student_id"
        cmd.Connection = con
        cmd.CommandText = query

        Dim sda As New SqlDataAdapter(cmd)
        Dim dt As New DataTable

        sda.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim id As String = GridView1.SelectedRow.Cells(1).Text
        Response.Redirect("ViewUser/AdminViewGuardianView.aspx?guardian_name=" + id)
    End Sub

    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        fillGridView()
        GridView1.PageIndex = e.NewPageIndex
        GridView1.DataBind()
    End Sub

    Private Sub GridView1_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim Id As Integer = GridView1.DataKeys(e.RowIndex).Value
        Dim cmd As New SqlCommand
        Dim query As String = "delete from guardians where ward_id='" & Id & "'"

        con.Open()
        cmd.Connection = con
        cmd.CommandText = query
        Dim num = cmd.ExecuteNonQuery()
        If num > 0 Then
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "Success", "<script type='text/javascript'>swal('Record Deleted Successfully!!!');window.location=AdminStudentView.aspx;</script>")
        End If
        fillGridView()
        con.Close()

    End Sub

    Protected Sub searchtxt_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub BtnSearch_ServerClick(sender As Object, e As EventArgs)
        Dim cmd As New SqlCommand
        Dim query As String = "select * from (select ward_id, guardian_name, address, guardian_contact from guardians g, students s where g.ward_id = s.student_id) as Guard where Guard.guardian_name like '%" & searchtxt.Text & "%'"
        cmd.Connection = con
        cmd.CommandText = query

        Dim sda As New SqlDataAdapter(cmd)
        Dim dt As New DataTable


        sda.Fill(dt)
        If (dt.Rows.Count > 0) Then
            GridView1.DataSource = dt
            GridView1.DataBind()
        Else
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "failure", "<script>swal('Record can not be found!');</script>")
        End If

    End Sub
End Class