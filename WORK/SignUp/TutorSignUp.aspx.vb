Imports System.Data.SqlClient
Public Class TutorSignUp
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub submitbtn_Click(sender As Object, e As EventArgs)
        Dim fname As String = fnametxt.Text
        Dim lname As String = lnametxt.Text
        Dim mname As String = mnametxt.Text
        Dim dob As String = dobtxt.Text
        Dim uname As String = unametxt.Text
        Dim pword As String = pwordtxt.Text
        Dim emailt As String = emailtxt.Text
        Dim contact As String = contacttxt.Text
        Dim gender As String
        If maleradio.Checked Then
            gender = "Male"
        Else
            gender = "Female"
        End If
        con.Open()
        Dim cmd As New SqlCommand
        cmd.Connection = con

        Dim query As String = "Insert into Tutors(fname, lname, mname, dob, gender, email, phone) values ('" & fname & "', '" & lname & "', '" & mname & "', '" & dob & "', '" & gender & "', '" & emailt & "', '" & contact & "')"
        cmd.CommandText = query
        cmd.ExecuteNonQuery()
        Try
            query = "Insert into TutorPasswordTable(uname, pword) values ('" & uname & "', '" & pword & "')"
            cmd.CommandText = query
            cmd.ExecuteNonQuery()


        Catch ex As Exception
            MsgBox("Error")
            Response.Redirect("../SignIn.aspx")
        End Try

        Response.Redirect("../Dashboard/TutorDashboard.aspx")



    End Sub
End Class