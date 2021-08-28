Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.IO

Public Class ViewSubmissions
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        fillGridView()
    End Sub

    Private Sub fillGridView()
        Dim cmd As New SqlCommand
        Dim query As String = "select FileId, student_id, fname, lname, sent_date from students, studentAssignment where student_id = std_id"
        cmd.Connection = con
        cmd.CommandText = query

        Dim sda As New SqlDataAdapter(cmd)
        Dim dt As New DataTable

        sda.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub
    Private Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim id As String = GridView1.SelectedRow.Cells(0).Text
        Dim dr As SqlDataReader
        Dim fileData As Byte() = Nothing
        Dim fileType As String = ""
        Dim filename As String = ""
        Dim extension As String = ""

        Dim sql As String
        sql = "Select std_id,file_name,FileType,extension,file_path,file_data from StudentAssignment where FileId='" & id & "'"
        con.Open()
        Using cmd = New SqlCommand(sql, con)
            dr = cmd.ExecuteReader()
            If dr.HasRows() Then
                dr.Read()
                fileData = CType(dr("file_data"), Byte())
                fileType = dr("FileType").ToString()
                filename = dr("file_name").ToString()
                extension = dr("extension").ToString()

            End If
        End Using
        con.Close()

        Response.Clear()
        Response.Buffer = True
        Response.Charset = ""
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.ContentType = fileType
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + filename + extension)
        Response.BinaryWrite(fileData)
        Response.Flush()
        Response.End()
    End Sub



    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        fillGridView()
        GridView1.PageIndex = e.NewPageIndex
        GridView1.DataBind()
    End Sub

    'Private Sub GridView1_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles GridView1.RowDeleting
    '    Dim studentId As Integer = GridView1.DataKeys(e.RowIndex).Value
    '    Dim cmd As New SqlCommand
    '    Dim query As String = "delete from students where student_id='" & studentId & "'"

    '    con.Open()
    '    cmd.Connection = con
    '    cmd.CommandText = query
    '    Dim num = cmd.ExecuteNonQuery()
    '    If num > 0 Then
    '        ClientScript.RegisterClientScriptBlock(Me.GetType(), "Success", "<script type='text/javascript'>swal('Record Deleted Successfully!!!');window.location=AdminStudentView.aspx;</script>")
    '    End If
    '    fillGridView()
    '    con.Close()

    'End Sub

    Protected Sub searchtxt_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub BtnSearch_ServerClick(sender As Object, e As EventArgs)
        Dim cmd As New SqlCommand
        Dim query As String = "select FileId, Student_id,fname, lname, sent_date from studentAssignment, students where student_id = std_id and fname like '%" & searchtxt.Text & "%'"
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

    Protected Sub loguname_ServerClick(sender As Object, e As EventArgs)

    End Sub
End Class