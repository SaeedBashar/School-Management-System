Imports System.IO
Imports System.Data
Imports System.Data.SqlClient
Public Class ViewAssignment
    Inherits System.Web.UI.Page
    Dim Con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            cid.InnerHtml = Session("cid")
            cname.InnerHtml = Session("cname")
            tname.InnerHtml = Session("tname")
            loguname.InnerHtml = Session("stdname")
            tit.InnerHtml = Request.QueryString("tit").ToUpper

            Dim conMod As String = Request.QueryString("con")

            For y As Integer = 1 To conMod.Length - 2
                If conMod(y + 1) = "." And IsNumeric(conMod(y)) Then
                    conMod = conMod.Insert(y, "<br/>")
                    y += 6
                End If
            Next
            cont.InnerHtml = conMod
        End If
    End Sub

    Protected Sub btnSubmit_ServerClick(sender As Object, e As EventArgs)
        Try

            Dim filename As String = fileup.FileName
            Dim path As String = Server.MapPath("~/Assignment/")
            Dim filenameWithoutExtension As String = IO.Path.GetFileNameWithoutExtension(filename)
            Dim extension As String = IO.Path.GetExtension(filename)
            Dim filePath As String = path + filename
            Dim contentType As String = fileup.PostedFile.ContentType

            If Not Directory.Exists(path) Then
                Directory.CreateDirectory(path)
            Else
                fileup.SaveAs(path & IO.Path.GetFileName(filename))
                Dim sql As String = "Insert into StudentAssignment(std_id, file_name,FileType,extension,file_path,Sent_date,Sent_time,file_data,sub_id)Values('" & Session("stdid") & "','" & filenameWithoutExtension & "','" & contentType & "','" & extension & "','" & path & "','" & DateTime.Now.ToShortDateString() & "','" & DateTime.Now.ToShortTimeString() & "',@fileData,'" & Session("cidn") & "')"
                Dim i As Integer
                Con.Open()
                Using cmd As New SqlCommand(sql, Con)
                    cmd.Parameters.Add(New SqlParameter("@filedata", SqlDbType.VarBinary)).Value = IO.File.ReadAllBytes(filePath)
                    i = cmd.ExecuteNonQuery()
                End Using
                If i > 0 Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "Success", "<script>swal('Assignment has been submitted successfully');window.location = ViewEnglishCourse.aspx;</script>")
                End If

                Con.Close()

            End If

        Catch ex As Exception
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "error", "<script>swal('An Error Occured \n '" & ex.Message & "'');window.location = ViewEnglishCourse.aspx;</script>")

        End Try
    End Sub

    Protected Sub editsubbtn_ServerClick(sender As Object, e As EventArgs)
        Dim fp As StreamWriter
        Try
            fp = File.CreateText(Server.MapPath("~\Assignment\") & loguname.InnerHtml & ".txt")
            fp.WriteLine(textEditor.Text)
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "Success", "<script>swal('Assignment has been submitted successfully'); </script>")
            fp.Close()
            Response.Redirect("../../StudentDashboard.aspx")
        Catch err As Exception
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "Success", "<script>swal('An Error Occured!! \n '" & err.ToString() & "'');</script>")
            Response.Redirect("../../StudentDashboard.aspx")
        Finally
        End Try
    End Sub
End Class