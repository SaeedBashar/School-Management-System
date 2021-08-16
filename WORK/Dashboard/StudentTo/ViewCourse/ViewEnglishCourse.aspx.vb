Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Public Class ViewEnglishCourse
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

        'DISPLAY AVAILABLE ASSIGNMENTS

        Con.Open()
        query = "select title, content from Assignments where course_id= '" & key & "'"
        cmd.CommandText = query
        Dim sda As New SqlDataAdapter(cmd)
        Dim dt As New DataTable

        Dim html As String = ""
        sda.Fill(dt)

        Dim conMod As String
        For x As Integer = 0 To dt.Rows.Count - 1
            html += "<div class='row'><div class='col-4 p-3' style='font-weight: bold;font-size: 20px;'>"
            html += dt.Rows(x)("title").ToString() + "</div><div class='col-7 p-3' style='font-size: 20px;'><a href='#' style='color: #4dc13b'>"

            conMod = dt.Rows(x)("content").ToString
            For y As Integer = 1 To conMod.Length - 2
                If conMod(y + 1) = "." And IsNumeric(conMod(y)) And conMod(y - 1) = vbLf Then
                    conMod = conMod.Insert(y - 1, "<br/>")
                    y += 6
                End If
            Next
            html += conMod + "</a></div><div class='col-1 p3' style='padding: '4%' ><input type='checkbox' disabled='disabled'/></div></div>"
        Next
        AsCont.InnerHtml = AsCont.InnerHtml.ToString + html


    End Sub

End Class