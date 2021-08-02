Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Public Class AdminViewStudentView
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            'Disabling the textboxes 
            stdfname.ReadOnly = True
            stdlname.ReadOnly = True
            stdmname.ReadOnly = True
            stdid.ReadOnly = True
            email.ReadOnly = True
            fbal.ReadOnly = True
            numstd.ReadOnly = True
            savebtn.Enabled = False

            Dim key As String = Request.QueryString("student_id")
            Dim cmd As New SqlCommand
            Dim query As String = "select * from Students where student_id='" & key & "'"

            cmd.CommandType = CommandType.Text
            cmd.CommandText = query
            cmd.Connection = con
            con.Open()

            Using sdr As SqlDataReader = cmd.ExecuteReader
                sdr.Read()
                stdfname.Text = sdr("fname").ToString
                stdlname.Text = sdr("lname").ToString
                stdmname.Text = sdr("mname").ToString
                stdid.Text = sdr("student_id").ToString
                email.Text = sdr("email").ToString
                fbal.Text = sdr("balance_fees").ToString
            End Using


            query = "select (fname + ' ' + mname + ' ' + lname) as 'Student Name', dob  as 'Date of birth' , guardian_name as 'Guardian Name', guardian_contact as 'Guardian Contact' from students"


            Dim sd As New SqlDataAdapter(cmd)
            cmd.CommandText = query
            Dim dt As New DataTable
            sd.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

            numstd.Text = dt.Rows.Count

            con.Close()
        Catch ex As Exception

            MsgBox(ex.Message)
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>alert('An Error Occured!!');window.location='../AdminStudentView.aspx';</script>")
        End Try
    End Sub

    Private Sub editbtn_Click(sender As Object, e As EventArgs) Handles editbtn.Click

        stdfname.ReadOnly = False
        stdlname.ReadOnly = False
        stdmname.ReadOnly = False
        email.ReadOnly = False
        fbal.ReadOnly = False
        numstd.ReadOnly = False
        savebtn.Enabled = True


    End Sub

    Private Sub savebtn_Click(sender As Object, e As EventArgs) Handles savebtn.Click
        Try
            stdfname.ReadOnly = True
            stdlname.ReadOnly = True
            stdmname.ReadOnly = True
            numstd.ReadOnly = True
            fbal.ReadOnly = True
            email.ReadOnly = True
            editbtn.Enabled = False

            Dim key = Request.QueryString("student_id")
            Dim cmd As New SqlCommand
            Dim query As String = "update students set fname = '" & stdfname.Text & "', lname='" & stdlname.Text & "', mname='" & stdmname.Text & "', email = '" & email.Text & "', Balance_fees='" & fbal.Text & "' WHERE student_id = '" & key & "' "

            con.Open()
            cmd.Connection = con
            cmd.CommandText = query
            cmd.ExecuteNonQuery()
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType, "Success", " <script type='text/javascript'>alert('Updated Successfully!!');window.location = '../AdminStudentView.aspx';</script>")

        Catch ex As Exception
            MsgBox(ex.Message.ToString)
            ClientScript.RegisterClientScriptBlock(Me.GetType, "Failure", " <script type='text/javascript'>alert('An Error Occured!!');window.location = '../AdminStudentView.aspx';</script>")
        End Try
    End Sub

End Class