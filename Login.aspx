<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登入 - 租圈</title>
    <style type="text/css">
    #login_wrapper
    {
        position :relative ;
        text-align :left ;
        width: 883px;
        height :350px;
        margin-top :100px;
        margin-left :auto ;
        margin-right :auto ;
        background-image:url("images/login3.gif");
        background-repeat :no-repeat ; 
        border: 1px solid #b8b8b8;
    }
    .login_area
    {
        float:left;
        width :380px;
        margin :0 0 0 15px;
        padding :0;
        margin-top :50px;
        border :1px solid #b8b8b8;
        _margin-left:6px;
        
    }
    .login_pic
    {
        float:left;
        width:450px;
        margin :0;
        padding :0;
        margin-top:50px;
        margin-left :5px;
    }
    .login_input
    {
        position :relative ;
        margin-top:20px;
        margin-left :15px;
        width :350px;
        border :1px solid #b8b8b8;
        text-align :center ;
        padding :0;
    }
    .forgetpw
    {
        position :relative ;
        margin-top:20px;
        margin-left :15px;
        margin-bottom :20px;
        width :350px;
        border :1px solid #b8b8b8;
        font-size :80%;
        text-align :center ;
        padding :0;
    }
    h3
    {
        color:Red;
        text-align :center ;
        font-size:100%;
        margin :0;
        padding :0;
    }
    h4
    {
        text-align :center ;
        font-size :80%;
        margin :0;    }
    .context
    {
        margin:0;
    }
    .userinput
   {
       font-size :80%;
        
    }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="login_wrapper">
    <div class="login_area">
        <div class="login_input">
        <div class="context"><h4>請填寫您的帳號,密碼、按下「登入」鍵進行登入。</h4></div>
        <div class="userinput">
            <asp:Login ID="Login1" runat="server" Width="350px">
                <LayoutTemplate>
                    <table border="0" cellpadding="1" cellspacing="0" 
                        style="border-collapse:collapse;">
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" width="350px">
                                    <tr>
                                        <td align="center" colspan="2">
                                            <h3>重要提醒：<br />租圈不會主動要求會員提供密碼。</h3></td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">使用者名稱:</asp:Label>
                                        </td>
                                        <td align ="left" >
                                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                ControlToValidate="UserName" ErrorMessage="必須提供使用者名稱。" ToolTip="必須提供使用者名稱。" 
                                                ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密碼:</asp:Label>
                                        </td>
                                        <td align ="left">
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                ControlToValidate="Password" ErrorMessage="必須提供密碼。" ToolTip="必須提供密碼。" 
                                                ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:CheckBox ID="RememberMe" runat="server" Text="記憶密碼供下次使用。" /><br />
                                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="登入" 
                                                ValidationGroup="Login1" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default5.aspx">【忘記帳號】</asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default5.aspx">【忘記密碼】</asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
            </div>
        </div>
        <div class="forgetpw">
        如果您尚未註冊租圈會員<br />
請按下鍵進行會員註冊，即可繼續使用本服務。<br />
            <asp:Button ID="Button1" runat="server" Text="立即註冊" />

</div>
        </div>
    <div class ="login_pic">
    
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="images/tip.jpg" Height="284px" Width="469px" />
    
    </div>
    
    </div>
    </form>
</body>
</html>
