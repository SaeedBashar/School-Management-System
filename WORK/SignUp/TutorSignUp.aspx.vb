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
        Try
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
            con.Close()

            'query for the id of the new admin
            Dim sdr As SqlDataReader
            query = "select * from tutors where email ='" & emailt & "'"
            con.Open()
            cmd.CommandText = query
            sdr = cmd.ExecuteReader
            sdr.Read()
            Dim key As Integer = sdr("tutor_id")
            sdr.Close()

            query = "Insert into TutorPasswordTable(uname, pword, tut_id, loginStatus ) values ('" & uname & "', '" & Encrypt(pword) & "', '" & key & "', '" & False & "')"
            cmd.CommandText = query
            cmd.ExecuteNonQuery()

            con.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "fail", "<script>swal('An Error Occured!!');window.location = '../SignIn.aspx'</script>")
        End Try

        ClientScript.RegisterClientScriptBlock(Me.GetType(), "success", "<script>swal('SignUp Successfully!!');setTimeout(function(){}, 3000);window.location = '../SignIn.aspx'</script>")

    End Sub

    Public Function Encrypt(password As String) As String
        Dim strmsg As String = ""
        Dim encode As Byte() = New Byte(password.Length - 1) {}
        encode = Encoding.UTF8.GetBytes(password)
        strmsg = Convert.ToBase64String(encode)
        Return strmsg
    End Function

End Class