<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="WebApplication3.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Height="272px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="942px">
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="Guess" HeaderText="Guess" SortExpression="Guess" />
                <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result" />
                <asp:BoundField DataField="CorrectAnswer" HeaderText="CorrectAnswer" SortExpression="CorrectAnswer" />
                <asp:BoundField DataField="GuessDate" HeaderText="GuessDate" SortExpression="GuessDate" />
                <asp:BoundField DataField="GuessTime" HeaderText="GuessTime" SortExpression="GuessTime" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NumberGameConnectionString %>" SelectCommand="SELECT * FROM [UserGuessHistory]"></asp:SqlDataSource>
    </form>
</body>
</html>
