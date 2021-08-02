Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Public Class AdminViewProgramView
    Inherits System.Web.UI.Page


    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            'Disabling the textboxes 
            pname.ReadOnly = True
            pid.ReadOnly = True
            hdid.ReadOnly = True
            numd.ReadOnly = True
            savebtn.Enabled = False

            Dim key As String = Request.QueryString("prog_id")
            Dim cmd As New SqlCommand
            Dim query As String = "select * from Programs where Prog_id='" & key & "'"

            cmd.CommandType = CommandType.Text
            cmd.CommandText = query
            cmd.Connection = con
            con.Open()

            Using sdr As SqlDataReader = cmd.ExecuteReader
                sdr.Read()
                pname.Text = sdr("prog_name").ToString
                pid.Text = sdr("prog_id").ToString
                hdid.Text = sdr("head_id").ToString
            End Using


            query = "select Prog_id as 'Program Id', prog_name  as 'Program Name' , (Fname + ' ' + mname + ' ' + lname) as 'Head of Department', Phone from programs ,tutors where  head_id = tutor_id"


            Dim sd As New SqlDataAdapter(cmd)
            cmd.CommandText = query
            Dim dt As New DataTable
            sd.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

            numd.Text = dt.Rows.Count

            con.Close()
        Catch ex As Exception

            MsgBox(ex.Message)
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>alert('An Error Occured!!');window.location='../AdminProgramView.aspx';</script>")
        End Try
    End Sub

    Private Sub editbtn_Click(sender As Object, e As EventArgs) Handles editbtn.Click

        pname.ReadOnly = False
        pid.ReadOnly = False
        numd.ReadOnly = False
        savebtn.Enabled = True


    End Sub

    Private Sub savebtn_Click(sender As Object, e As EventArgs) Handles savebtn.Click
        Try
            pname.ReadOnly = True
            pid.ReadOnly = True
            numd.ReadOnly = True
            editbtn.Enabled = False

            Dim key = Request.QueryString("prog_id")
            Dim cmd As New SqlCommand
            Dim query As String = "update program set prog_name = '" & pname.Text & "', head_id = '" & hdid.Text & "' WHERE prog_id = '" & key & "' "

            con.Open()
            cmd.Connection = con
            cmd.CommandText = query
            cmd.ExecuteNonQuery()
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType, "Success", " <script type='text/javascript'>alert('Updated Successfully!!');window.location = '../AdminProgramView.aspx';</script>")

        Catch ex As Exception
            MsgBox(ex.Message.ToString)
            ClientScript.RegisterClientScriptBlock(Me.GetType, "Failure", " <script type='text/javascript'>alert('An Error Occured!!');window.location = '../AdminProgramView.aspx';</script>")
        End Try
    End Sub

End Class