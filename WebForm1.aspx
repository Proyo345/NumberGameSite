<%@ Page Language="VB" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
&nbsp;<asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtUsername" runat="server" Height="16px" OnTextChanged="txtUsername_TextChanged" Width="146px"></asp:TextBox>
        </p>
        <p>
&nbsp;<asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" OnTextChanged="txtPassword_TextChanged" style="margin-bottom: 0px" Width="146px"></asp:TextBox>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblIncorrect" runat="server" ForeColor="Red" Text="Inccorect Credentials"></asp:Label>
        </p>
        <p style="margin-left: 80px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Log In" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NumberGameConnectionString %>" SelectCommand="SELECT * FROM [UserGuessHistory]"></asp:SqlDataSource>
        <asp:GridView ID="grdUserGuess" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="236px" Width="568px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Guess" HeaderText="Guess" SortExpression="Guess" />
                <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result" />
                <asp:BoundField DataField="CorrectAnswer" HeaderText="CorrectAnswer" SortExpression="CorrectAnswer" />
                <asp:BoundField DataField="GuessDate" HeaderText="GuessDate" SortExpression="GuessDate" />
                <asp:BoundField DataField="GuessTime" HeaderText="GuessTime" SortExpression="GuessTime" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
