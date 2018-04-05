<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            text-decoration: underline;
        }
    </style>
</head>
<body style="background-image: url(images/image3.jpg); width:inherit; height:inherit;background-repeat:no-repeat">
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">ADMIN PANNEL</h1>
            <p class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="username" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="515px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="username" HeaderText="User Name" ReadOnly="True" SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                        <asp:BoundField DataField="container_id" HeaderText="Container ID" SortExpression="container_id" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [login] WHERE [username] = @username" InsertCommand="INSERT INTO [login] ([username], [password], [container_id]) VALUES (@username, @password, @container_id)" SelectCommand="SELECT * FROM [login]" UpdateCommand="UPDATE [login] SET [password] = @password, [container_id] = @container_id WHERE [username] = @username">
                    <DeleteParameters>
                        <asp:Parameter Name="username" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="container_id" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="container_id" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <p class="auto-style1">
                &nbsp;</p>
            <p class="auto-style1">
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
