Imports System.Data.SqlClient

Public Class SignIn
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnSubmit_Click(sender As Object, e As EventArgs)
        Dim uname As String
        Dim uid As String

        Dim cmd As New SqlCommand
        Dim dr As SqlDataReader
        Dim query As String
        con.Open()
        If Statuslist.SelectedValue = 1 Then

            query = "Select uname, pword,  fname, lname, admin_id from Adminpasswordtable, administrator where uname = '" & unametxt.Text & "' And pword = '" & Encrypt(pwordtxt.Text) & "'and adm_id = admin_id"
            cmd.CommandText = query
            cmd.Connection = con
            dr = cmd.ExecuteReader
            dr.Read()
            If dr.HasRows Then
                uname = dr.GetSqlValue(2).ToString + " " + dr.GetSqlValue(3).ToString
                uid = dr("admin_id").ToString
                dr.Close()
                query = "update adminPasswordTable set loginStatus = 1 where adm_id ='" & uid & "'"
                cmd.CommandText = query
                cmd.ExecuteNonQuery()
                Response.Redirect("Dashboard/AdminDashboard.aspx?uname=" + uname + "&admin_id=" + uid)

            Else
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>swal('User name or password is invalid')</script>")
            End If
        ElseIf Statuslist.SelectedValue = 2 Then
            query = "Select uname,pword, fname, lname, tutor_id from Tutorpasswordtable, tutors where uname = '" & unametxt.Text & "' And pword = '" & Encrypt(pwordtxt.Text) & "' and tutor_id = tut_id "
            cmd.CommandText = query
            cmd.Connection = con
            dr = cmd.ExecuteReader
            dr.Read()
            If dr.HasRows Then
                uname = dr.GetSqlValue(2).ToString + " " + dr.GetSqlValue(3).ToString
                uid = dr("tutor_id").ToString
                dr.Close()
                query = "update tutorPasswordTable set loginStatus = 1 where tut_id ='" & uid & "'"
                cmd.CommandText = query
                cmd.ExecuteNonQuery()
                Response.Redirect("Dashboard/TutorDashboard.aspx?tutor_name=" + uname + "&tutor_id=" + uid)

            Else
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>swal('User name or password is invalid')</script>")
            End If
        Else
            query = "Select uname,pword, fname,lname, student_id from StudentPasswordTable,students where uname = '" & unametxt.Text.Trim() & "' And pword = '" & Encrypt(pwordtxt.Text.Trim()) & "' and std_id = student_id"
            cmd.CommandText = query
            cmd.Connection = con
            dr = cmd.ExecuteReader
            dr.Read()
            If dr.HasRows Then
                uname = dr.GetSqlValue(2).ToString + " " + dr.GetSqlValue(3).ToString
                uid = dr("student_id").ToString
                dr.Close()
                query = "update studentPasswordTable set loginStatus = 1 where  std_id ='" & uid & "'"
                cmd.CommandText = query
                cmd.ExecuteNonQuery()
                Response.Redirect("Dashboard/StudentDashboard.aspx?std_name=" + uname + "&student_id=" + uid)
            Else
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>swal('User name or password is invalid')</script>")
            End If
        End If
    End Sub

    Public Function Encrypt(password As String) As String
        Dim strmsg As String = ""
        Dim encode As Byte() = New Byte(password.Length - 1) {}
        encode = Encoding.UTF8.GetBytes(password)
        strmsg = Convert.ToBase64String(encode)
        Return strmsg
    End Function
End Class