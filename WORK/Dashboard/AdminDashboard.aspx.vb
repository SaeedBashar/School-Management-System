Imports System.Data.SqlClient

Public Class AdminDashboard
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim cmd As New SqlCommand
            Dim sdr As SqlDataReader

            Dim query As String = "select * from adminPasswordTable where adm_id= '" & Request.QueryString("admin_id") & "'"

            cmd.CommandText = query
            cmd.Connection = con

            con.Open()
            sdr = cmd.ExecuteReader
            sdr.Read()
            If sdr("loginStatus") = 0 Then
                Response.Redirect("../SignIn.aspx")
            End If
            con.Close()
        End If
    End Sub

    Protected Sub signout_ServerClick(sender As Object, e As EventArgs)
        Dim cmd As New SqlCommand
        Dim query As String = "update adminPasswordTable set loginStatus = 0 where adm_id= '" & Request.QueryString("admin_id") & "'"
        cmd.CommandText = query
        cmd.Connection = con

        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()

        Response.Redirect("../SignIn.aspx")
    End Sub

    Protected Sub adminArea_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("AdminTo/AdminArea.aspx?admin_id=" + Request.QueryString("admin_id"))
    End Sub

    Private Sub AdminDashboard_PreLoad(sender As Object, e As EventArgs) Handles Me.PreLoad
        Dim cmd As New SqlCommand
        Dim sdr As SqlDataReader

        Dim query As String = "select * from adminPasswordTable where adm_id= '" & Request.QueryString("admin_id") & "'"

        cmd.CommandText = query
        cmd.Connection = con

        con.Open()
        sdr = cmd.ExecuteReader
        sdr.Read()
        If sdr("loginStatus") = 0 Then
            Response.Redirect("../SignIn.aspx")
        End If
        con.Close()
    End Sub
End Class