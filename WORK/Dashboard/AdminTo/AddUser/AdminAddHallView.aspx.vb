Imports System.Data.SqlClient

Public Class AdminAddHallView
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub submitbtn_Click(sender As Object, e As EventArgs)
        Try
            Dim suc1 As Integer
            Dim hname As String = hnametxt.Text
            Dim tutid As String = tutidtxt.Text

            con.Open()
            Dim cmd As New SqlCommand
            cmd.Connection = con

            Dim query As String = "Insert into Houses(House_name, House_master_id ) values ( '" & hname & "', '" & tutid & "')"
            cmd.CommandText = query
            suc1 = cmd.ExecuteNonQuery()



            If suc1 <> 0 Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Success", "<script type='text/javascript'>swal('Record added Successfully!!'); window.location='../AdminHallView.aspx'; </script>")
            Else
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>swal('An Error Occured while trying to Insert Record!!'); window.location='../AdminHallView.aspx'; </script>")
            End If
        Catch ex As Exception

            ClientScript.RegisterClientScriptBlock(Me.GetType(), "failure", "<script>swal('An Error Occured!!');window.location='../AdminHallView.aspx';</script>")

        End Try
    End Sub
End Class