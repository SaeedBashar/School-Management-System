﻿Imports System.Data.SqlClient
Public Class AdminAddTutorView
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub submitbtn_Click(sender As Object, e As EventArgs)
        Dim suc1 As Integer, suc2 As Integer
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

            If suc1 > 0 And suc2 > 0 Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Success", "<script type='text/javascript'>alert('Added Successfully'); window.location='../AdminTutorView.aspx'; </script>")
            Else
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>alert('An Error Occured'); window.location='../AdminTutorView.aspx'; </script>")
            End If
        Catch ex As Exception
            MsgBox("Error")
            Response.Redirect("../AdminTutorView.aspx")
        End Try
    End Sub

End Class