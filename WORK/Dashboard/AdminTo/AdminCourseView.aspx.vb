Public Class AdminCourseView
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim id As String = GridView1.SelectedRow.Cells(0).Text
        'Session.Add("sub_id", id)
        Response.Redirect("ViewUser/AdminViewCoursesView.aspx?sub_id=" + id)
    End Sub
End Class