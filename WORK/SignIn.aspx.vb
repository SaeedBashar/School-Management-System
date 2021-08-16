Imports System.Data.SqlClient

Public Class SignIn
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub BtnSubmit_Click(sender As Object, e As EventArgs)
        Dim cmd As New SqlCommand
        Dim dr As SqlDataReader
        Dim query As String
        con.Open()
        If Statuslist.SelectedValue = 1 Then

            query = "Select uname, pword,  fname, lname from Adminpasswordtable, administrator where uname = '" & unametxt.Text & "' And pword = '" & pwordtxt.Text & "'and adm_id = admin_id"
            cmd.CommandText = query
            cmd.Connection = con
            dr = cmd.ExecuteReader
            dr.Read()
            If dr.HasRows Then
                Response.Redirect("Dashboard/AdminDashboard.aspx?admin_id=" + dr.GetSqlValue(2).ToString + " " + dr.GetSqlValue(3).ToString)
            Else
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>alert('User name or password is invalid')</script>")
            End If
        ElseIf Statuslist.SelectedValue = 2 Then
            query = "Select uname,pword, fname, lname, tutor_id from Tutorpasswordtable, tutors where uname = '" & unametxt.Text & "' And pword = '" & pwordtxt.Text & "' and tutor_id = tut_id "
            cmd.CommandText = query
            cmd.Connection = con
            dr = cmd.ExecuteReader
            dr.Read()
            If dr.HasRows Then
                Response.Redirect("Dashboard/TutorDashboard.aspx?tutor_name=" + dr.GetSqlValue(2).ToString + " " + dr.GetSqlValue(3).ToString + "&tutor_id=" + dr.GetSqlValue(4).ToString)
            Else
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>alert('User name or password is invalid')</script>")
            End If
        Else
            query = "Select uname,pword, fname,lname, student_id from StudentPasswordTable,students where uname = '" & unametxt.Text.Trim() & "' And pword = '" & pwordtxt.Text.Trim() & "' and std_id = student_id"
            cmd.CommandText = query
            cmd.Connection = con
            dr = cmd.ExecuteReader
            dr.Read()
            If dr.HasRows Then
                Response.Redirect("Dashboard/StudentDashboard.aspx?std_name=" + dr.GetSqlValue(2).ToString + " " + dr.GetSqlValue(3).ToString + "&student_id=" + dr.GetSqlValue(4).ToString)
            Else
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>alert('User name or password is invalid')</script>")
            End If
        End If
    End Sub
End Class