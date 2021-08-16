
Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Public Class AdminViewCoursesView
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            'Disabling the textboxes 
            courseid.ReadOnly = True
            coursename.ReadOnly = True
            tutorid.ReadOnly = True
            numstd.ReadOnly = True
            savebtn.Enabled = False

            Dim key As String = Request.QueryString("sub_id")
            Dim cmd As New SqlCommand
            Dim query As String = "select * from courses where sub_id='" & key & "'"

            cmd.CommandType = CommandType.Text
            cmd.CommandText = query
            cmd.Connection = con
            con.Open()

            Using sdr As SqlDataReader = cmd.ExecuteReader
                sdr.Read()
                courseid.Text = sdr("sub_id").ToString
                coursename.Text = sdr("sub_name").ToString
                tutorid.Text = sdr("Teacher_id").ToString

            End Using




            If CType(key, Integer) = 200 Then
                query = "select std_id as 'Student Id', class_work as 'Class Work', mid_term as 'Mid Term', end_term as 'End Term' from english "
            ElseIf CType(key, Integer) = 201 Then
                query = "select std_id as 'Student Id', class_work as 'Class Work', mid_term as 'Mid Term', end_term as 'End Term' from Core_mathematics"
            ElseIf CType(key, Integer) = 202 Then
                query = "select std_id as 'Student Id', class_work as 'Class Work', mid_term as 'Mid Term', end_term as 'End Term' from inter_science "
            Else
                query = "select std_id as 'Student Id', class_work as 'Class Work', mid_term as 'Mid Term', end_term as 'End Term' from social_studies "
            End If


            cmd.CommandText = query
            Dim sd As New SqlDataAdapter(cmd)
            Dim dt As New DataTable
            sd.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

            numstd.Text = dt.Rows.Count.ToString

            con.Close()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "Failure", "<script type='text/javascript'>alert('An Error Occured!!');window.location='../AdminCourseView.aspx';</script>")
        End Try
    End Sub

    Private Sub editbtn_Click(sender As Object, e As EventArgs) Handles editbtn.Click

        coursename.ReadOnly = False
        tutorid.ReadOnly = False
        numstd.ReadOnly = False
        savebtn.Enabled = True


    End Sub

    Private Sub savebtn_Click(sender As Object, e As EventArgs) Handles savebtn.Click
        Try
            coursename.ReadOnly = True
            tutorid.ReadOnly = True
            numstd.ReadOnly = True
            editbtn.Enabled = False

            Dim key = Request.QueryString("guardian_name")
            Dim cmd As New SqlCommand
            Dim query As String = "update courses set sub_name = '" & coursename.Text & "', teacher_id = '" & tutorid.Text & "' Where sub_id='" & key & "'"

            con.Open()
            cmd.Connection = con
            cmd.CommandText = query
            cmd.ExecuteNonQuery()
            con.Close()
            ClientScript.RegisterClientScriptBlock(Me.GetType, "Success", " <script type='text/javascript'>alert('Updated Successfully!!');window.location = '../AdminCourseView.aspx';</script>")

        Catch ex As Exception
            MsgBox(ex.Message.ToString)
            ClientScript.RegisterClientScriptBlock(Me.GetType, "Failure", " <script type='text/javascript'>alert('An Error Occured!!');window.location = '../AdminCourseView.aspx';</script>")
        End Try
    End Sub

End Class