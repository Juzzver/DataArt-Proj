<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebExamProj.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <a href ="Default.aspx"><div style="background-color: #009999; height: 40px;">
            Main page</div></a>
        <p>
            Fill next fields for register:</p>
        <div style="width: 328px; height: 157px;">
            <p>
                Email:
                <asp:TextBox ID="RegEmail" runat="server" style="float:right"></asp:TextBox>
            </p>
            <p>
                Name:
                <asp:TextBox ID="RegName" runat="server" style="float:right"></asp:TextBox>
            </p>
            <p>
                Surname:
                <asp:TextBox ID="RegSurname" runat="server" style="float:right"></asp:TextBox>
            </p>
            <p>
                Contact Number:
                <asp:TextBox ID="RegContactNumber" runat="server" style="float:right"></asp:TextBox>
            </p>
        </div>
            <asp:Button ID="RegistrationButton" runat="server" Text="Register" OnClick="RegistrationButton_Click"  />
    </form>
</body>
</html>
