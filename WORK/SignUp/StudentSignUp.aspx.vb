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
        Try
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
            con.Close()

            'query for the id of the new admin
            Dim sdr As SqlDataReader
            query = "select * from Students where email ='" & emailt & "'"
            con.Open()
            cmd.CommandText = query
            sdr = cmd.ExecuteReader
            sdr.Read()
            Dim key As Integer = sdr("student_id")
            sdr.Close()

            query = "Insert into StudentPasswordTable(uname, pword, std_id, loginStatus ) values ('" & uname & "', '" & Encrypt(pword) & "', '" & getUserId(emailt) & "', '0')"
            cmd.CommandText = query
            cmd.ExecuteNonQuery()

            con.Close()
        Catch ex As Exception
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "failure", "<script>swal('An Error Occured!!'); window.location = '../SignIn.aspx';</script>")

        End Try

        ClientScript.RegisterClientScriptBlock(Me.GetType(), "success", "<script>swal('SignUp Successfully!!');window.location = '../SignIn.aspx';</script>")

    End Sub

    Public Function Encrypt(password As String) As String
        Dim strmsg As String = ""
        Dim encode As Byte() = New Byte(password.Length - 1) {}
        encode = Encoding.UTF8.GetBytes(password)
        strmsg = Convert.ToBase64String(encode)
        Return strmsg
    End Function

    Public Function getUserId(str As String) As Integer
        Dim key As Integer
        Dim cmd As New SqlCommand
        Dim query As String = "select Student_id from students where email = '" & str & "'"
        Dim sdr As SqlDataReader

        cmd.Connection = con
        cmd.CommandText = query
        sdr = cmd.ExecuteReader
        sdr.Read()
        key = sdr(0)
        sdr.Close()


        Return key

    End Function
End Class