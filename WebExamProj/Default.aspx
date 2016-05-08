<% /* Директива определяющая общие настройки страницы */ %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebExamProj.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> <% /* указывает на то, что данная часть кода доступна из си шарп кода */ %>
    <title>Hello ASP.NET!</title>
    <link rel="stylesheet" href="CSSStyle.css"> <% /*CSS Styles*/%>
</head>
<body>
    <% /* Форма для серверных элементов управления */ %>
    <form id="form1" runat="server">  <% /* указывает на то, что данная часть кода доступна из си шарп кода */ %>
    <div>
        <div style ="float:right; display:inline-block; background: brown; width: auto; height: auto;">
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </div>
        
        <!-- Тэг %= - Выводит прямое вычисляемое значение-->
        <br />
        <br />
        <br />
        Сегодня:<%=DateTime.Now.ToShortDateString() %> <br/>

    <%--Серверный элемент управления для вывода текста--%>
        <asp:Label ID="Output" runat="server" CssClass="blockMain"> </asp:Label>

        <%=parse_output%>
    </div>

        <!-- Форма входа/регистрации -->
        <div style="height: 154px">
            <br />
            <div style="height: 67px; width: 243px">
                <asp:Label ID="LabelLogin" runat="server" Text="Login: " CssClass="blockMain"></asp:Label>

                <br />

                <asp:TextBox ID="LoginBox" runat="server" OnTextChanged="LoginBox_TextChanged" Text ="Enter your login here" onclick="(function(){var z = docoment.getElementById('LoginBox'); z.Text = ' '; })()" ToolTip="Enter your login here"></asp:TextBox> <br />
                <asp:Label ID="LabelPassword" runat="server" Text="Password: " CssClass="blockMain"></asp:Label>
                <br />
&nbsp;<asp:TextBox ID="PasswordBox" runat="server" OnTextChanged="PasswordBox_TextChanged" Text ="Password" TextMode="Password" ToolTip="Enter your password here"></asp:TextBox> 
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server"><a href ="Register.aspx">Register</a></asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="LoginButton" runat="server" BackColor="#009933" Text="Login" Width="69px" OnClick="LoginButton_Click" />
                <%=error_auth %>
            </div>
        </div>
    </form>
</body>
</html>
