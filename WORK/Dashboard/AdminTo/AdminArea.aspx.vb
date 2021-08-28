Imports System.Data
Imports System.Data.SqlClient

Public Class AdminArea
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack() Then
            savebtn.Disabled = True
            Dim key As String = Request.QueryString("admin_id")
            Dim cmd As New SqlCommand
            Dim query As String = "select * from administrator where admin_id= '" & key & "'"

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
                stdidtxt.Text = sdr("admin_id").ToString
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
        Try
            Dim cmd As New SqlCommand
            Dim query As String = "update administrator set dob='" & dobtxt.Text & "', email='" & emailtxt.Text & "', gender='" & gnametxt.Text & "', phone='" & gcontacttxt.Text & "' where admin_id='" & Request.QueryString("admin_id") & "'"

            cmd.CommandText = query
            cmd.Connection = con
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "success", "<script>swal('Record has been successfully updated!!');</script>")
        Catch ex As Exception
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "failure", "<script>swal('An Error Occured, Check and try Again!!');</script>")
        End Try
    End Sub
End Class