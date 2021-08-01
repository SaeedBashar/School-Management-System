Imports System.Data.SqlClient

Public Class SignIn
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub BtnSubmit_Click(sender As Object, e As EventArgs)
        Dim cmd As New SqlCommand
        Dim dr As SqlDataReader
        Dim query As String
        con.Open()
        If Statuslist.SelectedValue = 1 Then

            query = "Select * from Adminpasswordtable where uname = '" & unametxt.Text & "' And pword = '" & pwordtxt.Text & "'"
            cmd.CommandText = query
            cmd.Connection = con
            dr = cmd.ExecuteReader

            If dr.HasRows Then
                Response.Redirect("Dashboard/AdminDashboard.aspx")
            Else
                ClientScript.RegisterStartupScript(Me.GetType(), "", "Myfunc()", True)
            End If
        ElseIf Statuslist.SelectedValue = 2 Then
            query = "Select * from Tutorpasswordtable where uname = '" & unametxt.Text & "' And pword = '" & pwordtxt.Text & "'"
            cmd.CommandText = query
            cmd.Connection = con
            dr = cmd.ExecuteReader

            If dr.HasRows Then
                Response.Redirect("Dashboard/TutorDashboard.aspx")
            Else
                ClientScript.RegisterStartupScript(Me.GetType(), "", "Myfunc()", True)
            End If
        Else
            query = "Select * from Studentpasswordtable where uname = '" & unametxt.Text & "' And pword = '" & pwordtxt.Text & "'"
            cmd.CommandText = query
            cmd.Connection = con
            dr = cmd.ExecuteReader

            If dr.HasRows Then
                Response.Redirect("Dashboard/StudentDashboard.aspx")
            Else
                ClientScript.RegisterStartupScript(Me.GetType(), "", "Myfunc()", True)
            End If
        End If
    End Sub
End Class