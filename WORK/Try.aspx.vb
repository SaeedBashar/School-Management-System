
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.Services

Public Class _Try
    Inherits System.Web.UI.Page
    'Dim con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            'Dim constr As String = "Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True"
            Using con As New SqlConnection("Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True")
                Using sda As New SqlDataAdapter("SELECT * FROM status", con)
                    Dim dt As New DataTable()
                    sda.Fill(dt)
                    gvUsers.DataSource = dt
                    gvUsers.DataBind()
                End Using
            End Using
        End If
    End Sub

    <WebMethod()>
    Public Shared Sub SaveUser(user As User)
        Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("INSERT INTO Status VALUES(@stat_id, @stat_name)")
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@stat_id", user.sid)
                cmd.Parameters.AddWithValue("@stat_name", user.sname)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            End Using
        End Using
    End Sub

End Class
Public Class User
    Public Property sid() As String
    Public Property sname() As String
End Class