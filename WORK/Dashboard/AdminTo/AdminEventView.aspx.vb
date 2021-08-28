Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Public Class AdminEventView
    Inherits System.Web.UI.Page

    Dim Con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub submitAnn_ServerClick(sender As Object, e As EventArgs)
        Try

            Dim cmd As New SqlCommand

            Dim hvar As String = queHead.Value
            Dim bvar As String = queBody.InnerHtml
            Dim dt As SqlDataReader
            Dim query As String

            query = "insert into Announcement values( '" & hvar & "', '" & bvar & "') "
            cmd.CommandText = query
            Con.Open()
            If cmd.ExecuteNonQuery <> 0 Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Success", "<script type='text/javascript'>swal('Announcements Updated successfully!!');</script>")
            End If
            Con.Close()
        Catch ex As Exception

            ClientScript.RegisterClientScriptBlock(Me.GetType(), "error", "<script type='text/javascript'>swal('An error occured check and try again!!');</script>")
        End Try
    End Sub

    Protected Sub delEvent_ServerClick(sender As Object, e As EventArgs)
        Dim cmd As New SqlCommand
        Dim query As String = "delete from EventTable where title = '" & eventinp.Value & "'"
        cmd.CommandText = query
        cmd.Connection = Con

        Con.Open()
        If cmd.ExecuteNonQuery <> 0 Then
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "success", "<script>swal('Event deleted Successfully!!')</script>")
        Else
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "failure", "<script>swal('An Error Occured!!')</script>")
        End If
    End Sub
End Class