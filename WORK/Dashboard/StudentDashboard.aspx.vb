Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Public Class StudentDashboard
    Inherits System.Web.UI.Page

    Dim Con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack() Then

            Greet()
            Dim key As String = Request.QueryString("student_id")
            Session("stdid") = key
            Dim cmd As New SqlCommand
            Dim query As String = "select sub_id as SubjetId, class_work as ClassWork, mid_term as MidTerm, end_term as EndTerm, class_work + mid_term + end_term as Total from English where std_id = '" & key & "'
                                UNION
                               select sub_id as SubjetId, class_work as ClassWork, mid_term as MidTerm, end_term as EndTerm, class_work + mid_term + end_term as Total from  Core_Mathematics where std_id = '" & key & "'
                                UNION
                               select sub_id as SubjetId, class_work as ClassWork, mid_term as MidTerm, end_term as EndTerm, class_work + mid_term + end_term as Total from Inter_science where std_id = '" & key & "'
                                UNION
                               select sub_id as SubjetId, class_work as ClassWork, mid_term as MidTerm, end_term as EndTerm, class_work + mid_term + end_term as Total from Social_studies where std_id = '" & key & "' "
            cmd.CommandText = query
            cmd.Connection = Con
            Con.Open()
            GridView1.DataSource = cmd.ExecuteReader()
            GridView1.DataBind()
            Con.Close()


            '    Dim sdr As SqlDataReader

            'query = "select * from studentPasswordTable where std_id= '" & Request.QueryString("student_id") & "'"

            'cmd.CommandText = query
            '    cmd.Connection = Con

            '    Con.Open()
            '    sdr = cmd.ExecuteReader
            'sdr.Read()
            'If sdr("loginStatus") = 0 Then
            '    Response.Redirect("../SignIn.aspx")
            'End If
            'Con.Close()
        End If
    End Sub

    'Appending user name to welcome to welcome p element
    Private Sub Greet()
        Dim name As String = Request.QueryString("std_name")
        wlcome.InnerHtml += name
        loguname.InnerHtml += name
    End Sub

    Private Sub GotoProfile()
        Response.Redirect("StudentTo/StudentProfileView.aspx?std_id=" + Request.QueryString("student_id"))
    End Sub

    Protected Sub toprofile_ServerClick(sender As Object, e As EventArgs)
        GotoProfile()
    End Sub

    Private Sub viewEnglishCourse()
        Response.Redirect("StudentTo/ViewCourse/ViewEnglishCourse.aspx?cid=200&std_name=" + Request.QueryString("std_name"))
    End Sub
    Private Sub viewCoreMathCourse()
        Response.Redirect("StudentTo/ViewCourse/ViewCoreMathCourse.aspx?cid=201&std_name=" + Request.QueryString("std_name"))
    End Sub
    Private Sub viewInterScienceCourse()
        Response.Redirect("StudentTo/ViewCourse/ViewInterScienceCourse.aspx?cid=202&std_name=" + Request.QueryString("std_name"))
    End Sub
    Private Sub viewSocialStudiesCourse()
        Response.Redirect("StudentTo/ViewCourse/ViewSocialStudiesCourse.aspx?cid=204&std_name=" + Request.QueryString("std_name"))
    End Sub
    Private Sub viewElectiveMathCourse()
        Response.Redirect("StudentTo/ViewCourse/ViewElectiveMathCourse.aspx?cid=&std_name=" + Request.QueryString("std_name"))
    End Sub
    Private Sub viewPhysicsCourse()
        Response.Redirect("StudentTo/ViewCourse/ViewPhysicsCourse.aspx?cid=&std_name=" + Request.QueryString("std_name"))
    End Sub
    Private Sub viewChemistryCourse()
        Response.Redirect("StudentTo/ViewCourse/ViewChemistryCourse.aspx?cid=&std_name=" + Request.QueryString("std_name"))
    End Sub
    Private Sub viewBiologyCourse()
        Response.Redirect("StudentTo/ViewCourse/ViewBiologyCourse.aspx?cid=&std_name=" + Request.QueryString("std_name"))
    End Sub

    Protected Sub engview_ServerClick(sender As Object, e As EventArgs)
        viewEnglishCourse()
    End Sub

    Protected Sub cmathview_ServerClick(sender As Object, e As EventArgs)
        viewCoreMathCourse()
    End Sub

    Protected Sub intsciview_ServerClick(sender As Object, e As EventArgs)
        viewInterScienceCourse()
    End Sub

    Protected Sub socialview_ServerClick(sender As Object, e As EventArgs)
        viewSocialStudiesCourse()
    End Sub

    Protected Sub physicview_ServerClick(sender As Object, e As EventArgs)
        viewPhysicsCourse()
    End Sub

    Protected Sub emathview_ServerClick(sender As Object, e As EventArgs)
        viewElectiveMathCourse()
    End Sub

    Protected Sub chemview_ServerClick(sender As Object, e As EventArgs)
        viewChemistryCourse()
    End Sub

    Protected Sub bioview_ServerClick(sender As Object, e As EventArgs)
        viewBiologyCourse()
    End Sub

    Protected Sub signout_ServerClick(sender As Object, e As EventArgs)
        Dim cmd As New SqlCommand
        Dim query As String = "update StudentPasswordTable set loginStatus = 0 where std_id= '" & Request.QueryString("student_id") & "'"
        cmd.CommandText = query
        cmd.Connection = Con

        Con.Open()
        cmd.ExecuteNonQuery()
        Con.Close()

        Response.Redirect("../SignIn.aspx")
    End Sub
End Class