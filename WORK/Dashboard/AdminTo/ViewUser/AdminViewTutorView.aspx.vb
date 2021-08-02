Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Public Class AdminViewTutorView
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            'Disabling the textboxes 
            tufname.ReadOnly = True
            tulname.ReadOnly = True
            tumname.ReadOnly = True
            tuid.ReadOnly = True
            email.ReadOnly = True
            phone.ReadOnly = True
            numtu.ReadOnly = True
            savebtn.Enabled = False

            Dim key As String = Request.QueryString("Tutor_id")
            Dim cmd As New SqlCommand
            Dim query As String = "select * from tutors where tutor_id='" & key & "'"

            cmd.CommandType = CommandType.Text
            cmd.CommandText = query
            cmd.Connection = con
            con.Open()

            Using sdr As SqlDataReader = cmd.ExecuteReader
                sdr.Read()
                tufname.Text = sdr("fname").ToString
                tulname.Text = sdr("lname").ToString
                tumname.Text = sdr("mname").ToString
                tuid.Text = sdr("tutor_id").ToString
                email.Text = sdr("email").ToString
                phone.Text = sdr("phone").ToString
            End Using


            query = "select (fname + ' ' + mname + ' ' + lname) as 'Tutor Name', dob  as 'Date of birth' , email as 'Tutor Email', phone as 'Tutor Contact' from tutors"


            Dim sd As New SqlDataAdapter(cmd)
            cmd.CommandText = query
            Dim dt As New DataTable
            sd.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

            numtu.Text = dt.Rows.Count

            con.Close()
        Catch ex As Exception

            MsgBox(ex.Message)
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>alert('An Error Occured!!');window.location='../AdminTutorView.aspx';</script>")
        End Try
    End Sub

    Private Sub editbtn_Click(sender As Object, e As EventArgs) Handles editbtn.Click

        tufname.ReadOnly = False
        tulname.ReadOnly = False
        tumname.ReadOnly = False
        email.ReadOnly = False
        phone.ReadOnly = False
        numtu.ReadOnly = False
        savebtn.Enabled = True


    End Sub

    Private Sub savebtn_Click(sender As Object, e As EventArgs) Handles savebtn.Click
        Try
            tufname.ReadOnly = True
            tulname.ReadOnly = True
            tumname.ReadOnly = True
            numtu.ReadOnly = True
            phone.ReadOnly = True
            email.ReadOnly = True
            editbtn.Enabled = False

            Dim key = Request.QueryString("Tutor_id")
            Dim cmd As New SqlCommand
            Dim query As String = "update Tutors set fname = '" & tufname.Text & "', lname='" & tulname.Text & "', mname='" & tumname.Text & "', email = '" & email.Text & "', phone='" & phone.Text & "' WHERE tutor_id = '" & key & "' "

            con.Open()
            cmd.Connection = con
            cmd.CommandText = query
            cmd.ExecuteNonQuery()
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType, "Success", " <script type='text/javascript'>alert('Updated Successfully!!');window.location = '../AdminTutorView.aspx';</script>")

        Catch ex As Exception
            MsgBox(ex.Message.ToString)
            ClientScript.RegisterClientScriptBlock(Me.GetType, "Failure", " <script type='text/javascript'>alert('An Error Occured!!');window.location = '../AdminTutorView.aspx';</script>")
        End Try
    End Sub


End Class