Imports System.Data.SqlClient
Public Class StudentSignUp
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
        Dim guardian As String = guardiantxt.Text
        Dim guardiancontact As String = guardiancontacttxt.Text
        Dim gender As String
        If maleradio.Checked Then
            gender = "Male"
        Else
            gender = "Female"
        End If
        con.Open()
        Dim cmd As New SqlCommand
        cmd.Connection = con

        Dim query As String = "Insert into Students(fname, lname, mname, dob, gender, email, guardian_name, guardian_contact) values ('" & fname & "', '" & lname & "', '" & mname & "', '" & dob & "', '" & gender & "', '" & emailt & "', '" & guardian & "', '" & guardiancontact & "')"
        cmd.CommandText = query
        cmd.ExecuteNonQuery()
        Try
            query = "Insert into StudentPasswordTable(uname, pword) values ('" & uname & "', '" & pword & "')"
            cmd.CommandText = query
            cmd.ExecuteNonQuery()


        Catch ex As Exception
            MsgBox("Error")
            Response.Redirect("../SignIn.aspx")
        End Try

        Response.Redirect("../Dashboard/StudentDashboard.aspx")


    End Sub
End Class