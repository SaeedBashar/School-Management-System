<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Try.aspx.vb" Inherits="WORK._Try" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>Username:</td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" Text="" /></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSave" Text="Save" runat="server" /></td>
            </tr>
        </table>
        <hr />
        <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="stat_id" HeaderText="sid" />
                <asp:BoundField DataField="stat_name" HeaderText="sname" />
            </Columns>
        </asp:GridView>
    </form>
   
     <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
     <script type="text/javascript" src="https://cdn.jsdelivr.net/json2/0.1/json2.js"></script>
    <script type="text/javascript">
    $(function () {
        $("[id*=btnSave]").bind("click", function () {
            var user = {};
            user.sid = $("[id*=txtUsername]").val();
            user.sname = $("[id*=txtPassword]").val();
            $.ajax({
                type: "POST",
                url: "Default.aspx/SaveUser",
                data: '{user: ' + JSON.stringify(user) + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    alert("User has been added successfully.");
                    window.location.reload();
                }
            });
            return false;
        });
    });
    </script>
</body>
</html>
