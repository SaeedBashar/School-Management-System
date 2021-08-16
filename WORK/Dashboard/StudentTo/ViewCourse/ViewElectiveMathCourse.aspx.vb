Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Public Class ViewElectiveMathCourse
    Inherits System.Web.UI.Page
    Dim Con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        loguname.InnerHtml = Request.QueryString("std_name")
        Dim key As String = Request.QueryString("cid")
        Dim cmd As New SqlCommand
        Dim query As String = "select sub_id, sub_name, Fname, mname, lname from courses, tutors where tutor_id = teacher_id and sub_id ='" & key & "'"
        Con.Open()
        cmd.Connection = Con
        cmd.CommandText = query
        Dim sdr As SqlDataReader = cmd.ExecuteReader
        sdr.Read()
        cid.InnerHtml += sdr("sub_id").ToString
        cname.InnerHtml += sdr("sub_name").ToString
        tname.InnerHtml += sdr("fname").ToString + " " + sdr("mname").ToString + " " + sdr("lname").ToString
        Con.Close()
    End Sub


End Class