Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Public Class AdminViewGuardianView
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            'Disabling the textboxes 
            gname.ReadOnly = True
            gphone.ReadOnly = True
            gward.ReadOnly = True
            savebtn.Enabled = False

            Dim key As String = Request.QueryString("guardian_name")
            Dim cmd As New SqlCommand
            Dim query As String = "select * from guardians,students where Guardian_name='" & key & "' AND ward_id = Student_id "

            cmd.CommandType = CommandType.Text
            cmd.CommandText = query
            cmd.Connection = con
            con.Open()

            Using sdr As SqlDataReader = cmd.ExecuteReader
                sdr.Read()
                gname.Text = sdr("Guardian_name").ToString
                gphone.Text = sdr("Guardian_contact").ToString
                gward.Text = sdr("fname").ToString + " " + sdr("lname").ToString
            End Using


            query = "select Guardian_name as Parent, fname + ' ' + lname as Child, Address, Guardian_contact as Phone from Guardians,students where ward_id = student_id"


            cmd.CommandText = query
            Dim sd As New SqlDataAdapter(cmd)
            Dim dt As New DataTable
            sd.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

            con.Close()
        Catch ex As Exception
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>alert('An Error Occured!!');window.location='../AdminGuardianView.aspx';</script>")
        End Try
    End Sub

    Private Sub editbtn_Click(sender As Object, e As EventArgs) Handles editbtn.Click

        gname.ReadOnly = False
        gphone.ReadOnly = False
        savebtn.Enabled = True


    End Sub

    Private Sub savebtn_Click(sender As Object, e As EventArgs) Handles savebtn.Click
        Try
            gname.ReadOnly = True
            gphone.ReadOnly = True
            editbtn.Enabled = False

            Dim key = Request.QueryString("guardian_name")
            Dim cmd As New SqlCommand
            Dim query As String = "update students set guardian_name = '" & gname.Text & "', guardian_contact = '" & gphone.Text & "' WHERE student_id = (select ward_id from guardians,students where guardian_name = '" & key & "' AND student_id = ward_id) "

            con.Open()
            cmd.Connection = con
            cmd.CommandText = query
            cmd.ExecuteNonQuery()
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType, "Success", " <script type='text/javascript'>alert('Updated Successfully!!');window.location = '../AdminGuardianView.aspx';</script>")

        Catch ex As Exception
            MsgBox(ex.Message.ToString)
            ClientScript.RegisterClientScriptBlock(Me.GetType, "Failure", " <script type='text/javascript'>alert('An Error Occured!!');window.location = '../AdminGuardianView.aspx';</script>")
        End Try
    End Sub
End Class