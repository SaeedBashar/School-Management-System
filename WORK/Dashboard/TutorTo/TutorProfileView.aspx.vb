Imports System.Data
Imports System.Data.SqlClient

Public Class TutorProfileView
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack() Then

            savebtn.Disabled = True
            Dim key As String = Request.QueryString("tutor_id")
            Dim cmd As New SqlCommand
            Dim query As String = "select * from tutors where tutor_id= '" & key & "'"

            cmd.CommandText = query
            cmd.Connection = con
            con.Open()

            Using sdr As SqlDataReader = cmd.ExecuteReader
                sdr.Read()
                cuser.InnerHtml = sdr("fname").ToString + " " + sdr("mname").ToString + " " + sdr("lname").ToString
                loguname.InnerHtml = cuser.InnerHtml

                unametxt.Text = sdr("fname").ToString + " " + sdr("mname").ToString + " " + sdr("lname").ToString
                dobtxt.Text = sdr("dob").ToString
                emailtxt.Text = sdr("email").ToString
                stdidtxt.Text = sdr("tutor_id").ToString
                gnametxt.Text = sdr("gender").ToString
                gcontacttxt.Text = sdr("phone").ToString
            End Using
            con.Close()
        End If
    End Sub

    Protected Sub editbtn_ServerClick(sender As Object, e As EventArgs)
        savebtn.Disabled = False
        dobtxt.Enabled = True
        emailtxt.Enabled = True
        gnametxt.Enabled = True
        gcontacttxt.Enabled = True
    End Sub

    Protected Sub savebtn_ServerClick(sender As Object, e As EventArgs)
        Dim cmd As New SqlCommand
        Dim query As String = "update students set dob='" & dobtxt.Text & "', email='" & emailtxt.Text & "', guardian_name='" & gnametxt.Text & "', guardian_contact='" & gcontacttxt.Text & "' where student_id='" & Request.QueryString("std_id") & "'"

        cmd.CommandText = query
        cmd.Connection = con
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
    End Sub
End Class