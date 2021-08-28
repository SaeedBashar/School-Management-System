Imports System.Data.SqlClient

Public Class AdminAddCourseView
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub submitbtn_Click(sender As Object, e As EventArgs)
        Try
            Dim suc1 As Integer
            Dim sname As String = snametxt.Text
            Dim tutid As String = tutidtxt.Text

            con.Open()
            Dim cmd As New SqlCommand
            cmd.Connection = con

            Dim query As String = "Insert into Courses(sub_name, Teacher_id ) values ( '" & sname & "', '" & tutid & "')"
            cmd.CommandText = query
            suc1 = cmd.ExecuteNonQuery()



            If suc1 <> 0 Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Success", "<script type='text/javascript'>swal('Record added Successfully!!'); window.location='../AdminCourseView.aspx'; </script>")
            Else
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>swal('An Error Occured while trying to Insert Record!!'); window.location='../AdminCourseView.aspx'; </script>")
            End If
        Catch ex As Exception

            ClientScript.RegisterClientScriptBlock(Me.GetType(), "failure", "<script>swal('An Error Occured!!');window.location='../AdminCourseView.aspx';</script>")

        End Try
    End Sub
End Class