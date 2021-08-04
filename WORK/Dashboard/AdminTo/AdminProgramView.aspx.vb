Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Public Class AdminProgramView
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim id As String = GridView1.SelectedRow.Cells(0).Text
        Response.Redirect("ViewUser/AdminViewProgramView.aspx?Prog_id=" + id)
    End Sub

    Protected Sub delbtn_ServerClick(sender As Object, e As EventArgs)
        Dim cmd As New SqlCommand
        Dim query As String = "delete from programs where prog_id='" & id_input.Value.Trim() & "'"

        con.Open()
        cmd.Connection = con
        cmd.CommandText = query
        Dim num = cmd.ExecuteNonQuery()
        If num > 0 Then
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "Success", "<script type='text/javascript'>alert('Data Deleted Successfully');window.location=AdminProgramView.aspx;</script>")
        End If
        con.Close()
    End Sub
End Class