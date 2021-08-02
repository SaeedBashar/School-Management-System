Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Public Class AdminViewHallView
    Inherits System.Web.UI.Page


    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            'Disabling the textboxes 
            hname.ReadOnly = True
            hid.ReadOnly = True
            hmid.ReadOnly = True
            numh.ReadOnly = True
            savebtn.Enabled = False

            Dim key As String = Request.QueryString("House_id")
            Dim cmd As New SqlCommand
            Dim query As String = "select * from Houses where house_id='" & key & "'"

            cmd.CommandType = CommandType.Text
            cmd.CommandText = query
            cmd.Connection = con
            con.Open()

            Using sdr As SqlDataReader = cmd.ExecuteReader
                sdr.Read()
                hname.Text = sdr("house_name").ToString
                hid.Text = sdr("house_id").ToString
                hmid.Text = sdr("house_master_id").ToString
            End Using


            query = "select House_id as 'Hall Id', House_name  as 'Hall Name' , (Fname + ' ' + mname + ' ' + lname) as 'Hall Master Name', Phone from houses ,tutors where  house_master_id = tutor_id"


            Dim sd As New SqlDataAdapter(cmd)
            cmd.CommandText = query
            Dim dt As New DataTable
            sd.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

            numh.Text = dt.Rows.Count

            con.Close()
        Catch ex As Exception

            MsgBox(ex.Message)
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>alert('An Error Occured!!');window.location='../AdminHallView.aspx';</script>")
        End Try
    End Sub

    Private Sub editbtn_Click(sender As Object, e As EventArgs) Handles editbtn.Click

        hname.ReadOnly = False
        hmid.ReadOnly = False
        numh.ReadOnly = False
        savebtn.Enabled = True


    End Sub

    Private Sub savebtn_Click(sender As Object, e As EventArgs) Handles savebtn.Click
        Try
            hname.ReadOnly = True
            hmid.ReadOnly = True
            numh.ReadOnly = True
            editbtn.Enabled = False

            Dim key = Request.QueryString("House_id")
            Dim cmd As New SqlCommand
            Dim query As String = "update Houses set House_name = '" & hname.Text & "', House_master_id = '" & hmid.Text & "' WHERE house_id = '" & key & "' "

            con.Open()
            cmd.Connection = con
            cmd.CommandText = query
            cmd.ExecuteNonQuery()
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType, "Success", " <script type='text/javascript'>alert('Updated Successfully!!');window.location = '../AdminHallView.aspx';</script>")

        Catch ex As Exception
            MsgBox(ex.Message.ToString)
            ClientScript.RegisterClientScriptBlock(Me.GetType, "Failure", " <script type='text/javascript'>alert('An Error Occured!!');window.location = '../AdminHallView.aspx';</script>")
        End Try
    End Sub

End Class