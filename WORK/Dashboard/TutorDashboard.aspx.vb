Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Public Class TutorDashboard
    Inherits System.Web.UI.Page

    Dim Con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Dim cid As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack() Then
            Greet()
            Dim key As String = Request.QueryString("tutor_id")
            Dim cmd As New SqlCommand
            Dim dt As SqlDataReader
            Dim query As String = "select * from courses where teacher_id='" & key & "'"
            cmd.CommandText = query
            cmd.Connection = Con

            Con.Open()
            dt = cmd.ExecuteReader
            dt.Read()



            If dt.HasRows Then
                grade.InnerHtml += dt("sub_name").ToString.ToUpper
                If dt.GetSqlValue(0).ToString = "200" Then
                    cid = "200"
                    dt.Close()
                    query = "select std_id as 'Student Id', class_work as 'Class Work', mid_term as 'Mid Term', end_term as 'End Term' from english "
                    cmd.CommandText = query
                    dt = cmd.ExecuteReader
                    GridView1.DataSource = dt
                    GridView1.DataBind()
                ElseIf dt.GetSqlValue(0).ToString = "201" Then
                    cid = "201"
                    dt.Close()
                    query = "select std_id as 'Student Id', class_work as 'Class Work', mid_term as 'Mid Term', end_term as 'End Term' from Core_mathematics"
                    cmd.CommandText = query
                    dt = cmd.ExecuteReader
                    GridView1.DataSource = dt
                    GridView1.DataBind()
                ElseIf dt.GetSqlValue(0).ToString = "202" Then
                    cid = "202"
                    dt.Close()
                    query = "select std_id as 'Student Id', class_work as 'Class Work', mid_term as 'Mid Term', end_term as 'End Term' from inter_science "
                    cmd.CommandText = query
                    dt = cmd.ExecuteReader
                    GridView1.DataSource = dt
                    GridView1.DataBind()
                Else
                    cid = "203"
                    dt.Close()
                    query = "select std_id as 'Student Id', class_work as 'Class Work', mid_term as 'Mid Term', end_term as 'End Term' from social_studies "
                    cmd.CommandText = query
                    dt = cmd.ExecuteReader
                    GridView1.DataSource = dt
                    GridView1.DataBind()
                End If

            End If

            Con.Close()

            Dim sdr As SqlDataReader

            query = "select * from tutorPasswordTable where tut_id= '" & key & "'"

            cmd.CommandText = query
            cmd.Connection = Con

            Con.Open()
            sdr = cmd.ExecuteReader
            sdr.Read()
            If sdr("loginStatus") = 0 Then
                Response.Redirect("../SignIn.aspx")
            End If
            Con.Close()
        End If
    End Sub

    'Appending user name to welcome to welcome p element
    Private Sub Greet()
        Dim name As String = Request.QueryString("tutor_name")
        wlcome.InnerHtml += name
        loguname.InnerHtml += name
    End Sub

    Private Sub GotoProfile()
        Response.Redirect("TutorTo/TutorProfileView.aspx?tutor_id=" + Request.QueryString("tutor_id"))
    End Sub

    Protected Sub toprofile_ServerClick(sender As Object, e As EventArgs)
        GotoProfile()
    End Sub


    Protected Sub engview_ServerClick(sender As Object, e As EventArgs)

    End Sub

    'Sends user to submissions page
    Protected Sub cmathview_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("TutorTo/ViewSubmissions.aspx?cid=" + cid)
    End Sub




    Protected Sub socialview_ServerClick(sender As Object, e As EventArgs)

    End Sub



    Protected Sub submitQue_ServerClick(sender As Object, e As EventArgs)
        Try

            Dim cmd As New SqlCommand
            Dim subId As String
            Dim hvar As String = queHead.Value
            Dim bvar As String = queBody.InnerHtml
            Dim dt As SqlDataReader
            Dim query As String = "select sub_taught_id from tutors where tutor_id = '" & Request.QueryString("tutor_id") & "'"


            cmd.CommandText = query
            cmd.Connection = Con

            Con.Open()
            dt = cmd.ExecuteReader
            dt.Read()
            subId = dt("sub_taught_id")
            Con.Close()

            query = "insert into Assignments values('" & subId & "', '" & hvar & "', '" & bvar & "') "
            cmd.CommandText = query
            Con.Open()
            If cmd.ExecuteNonQuery <> 0 Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Success", "<script type='text/javascript'>swal('Assignment Updated successfully!!');</script>")
            End If
            Con.Close()
        Catch ex As Exception
            MsgBox(ex.Source + vbCrLf + ex.Message)
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "error", "<script type='text/javascript'>swal('An error occured check and try again!!');</script>")
        End Try
    End Sub

    Protected Sub viewAssign_ServerClick(sender As Object, e As EventArgs)

    End Sub

    Protected Sub annouceview_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("TutorTo/TutorViewAnnouncement.aspx?tut_id" + Request.QueryString("tutor_id"))
    End Sub

    Protected Sub signout_ServerClick(sender As Object, e As EventArgs)
        Dim cmd As New SqlCommand
        Dim query As String = "update tutorPasswordTable set loginStatus = 0 where tut_id= '" & Request.QueryString("tutor_id") & "'"
        cmd.CommandText = query
        cmd.Connection = Con

        Con.Open()
        cmd.ExecuteNonQuery()
        Con.Close()

        Response.Redirect("../SignIn.aspx")
    End Sub

    Protected Sub eventeview_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("TutorTo/TutorViewEvent.aspx?tut_id=" + Request.QueryString("tutor_id"))
    End Sub
End Class