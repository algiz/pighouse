<%@ Page Language="VB" MasterPageFile="~/MasterPage5.master" AutoEventWireup="false" CodeFile="Default5.aspx.vb" Inherits="Default5" title="會員中心 - 租圈" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type ="text/css" >
.limenu
{
    width:575px;
}
.limenu ul
{
    list-style: none;
    margin:0;
   
}
.limenu li
{
    float: left;
    width: 48%;
    text-align :center;
    margin-top :10px;

}
.style1
        {
            width: 100%;
            border :0;
            font-size :80%;

        }
        
        .style2
        {
            width: 165px;
            text-align :center ;
            background-color:#ffffce;
        }
        
        .style3
        {
            width: 165px;
            text-align : center;
            background-color: #ffffce;
            height: 24px;
        }
        .style4
        {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="mainout">

 <asp:Panel ID="Panel1" runat="server">
        <div id="userhead">
<div class="join">
歡迎光臨 我的租圈! 請登入。<br />
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/login.png" />
</div>
<div class="login">
如果您非租圈會員請由此加入。<br />
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/images/nowreg.png" />
</div>
</div>
        </asp:Panel>

<div class="userlist">
歡迎<asp:LoginName ID="LoginName1" runat="server" />登入
<div style="width:194px; height :3em; margin :10px;">
<asp:LinkButton ID="LinkButton5" runat="server" Text="本站服務"></asp:LinkButton>
</div>
<div style="width:194px; height :3em; margin :10px;">
<asp:LinkButton ID="LinkButton3" runat="server" Text="忘記密碼"></asp:LinkButton>
</div>
<div style="width:194px; height :3em; margin :10px;">
<asp:LinkButton ID="LinkButton4" runat="server" Text="忘記帳號"></asp:LinkButton>
</div>
<div style="width:194px; height :3em; margin :10px;">
<asp:LinkButton ID="LinkButton1" runat="server" Text="常見問題"></asp:LinkButton>
</div>
<div style="width:194px; height :3em; margin :10px;">
<asp:LinkButton ID="LinkButton2" runat="server" Text="新手上路"></asp:LinkButton>
</div>


<div style="clear :both ;"></div>
<div class="section " style ="width :197px; margin-top :15px; margin-bottom :10px;"> 小小叮嚀</div>
<ul>
<li>租圈密碼定期換，網路安全好習慣!!</li>
<li>杜絕網站不法交易確保會員安全!</li>
<li>租圈契約書」請會員要特別注意!</li>
</ul>
</div>

<div class="notic">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
 <div class= "section ">本站服務</div>
      <div class="limenu">
      <ul>
      <li><asp:ImageButton ID="ImageButton3" runat="server" 
              ImageUrl="~/images/home.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton4" runat="server" 
              ImageUrl="~/images/updata.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/msg.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton6" runat="server" 
              ImageUrl="~/images/Points.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton7" runat="server" 
              ImageUrl="~/images/Bonus.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/buy.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton9" runat="server" 
              ImageUrl="~/images/Rules.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton10" runat="server" 
              ImageUrl="~/images/callme.jpg" /></li>
      </ul>
      </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
        <div class ="section">忘記密碼</div>
        <table class ="style1 ">
                              <tr>
                            <td class="style3">
                                <font color="#FF0000">*</font> 帳　　號</td>
                            <td class="style4">
                                <asp:TextBox ID="TextBox3" runat="server"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <font color="#FF0000">*</font> 身分證字號</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" />
                            </td>
                        </tr>
                       <tr>
                        </td>
                        <td class="style2 ">
                            <font color="#FF0000">*</font>E-mail</td>
                           <td>
                               <asp:TextBox ID="TextBox2" runat="server" />
                           </td>
                        </tr>
      </table>
      <div style ="text-align :center ">
                    <asp:Button ID="Button1" runat="server" Text="確定" onclick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="取消" /></div>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    account:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />
                    password:
                    <asp:TextBox ID="passwordTextBox" runat="server" 
                        Text='<%# Bind("password") %>' />
                    <br />
                    id_number:
                    <asp:TextBox ID="id_numberTextBox" runat="server" 
                        Text='<%# Bind("id_number") %>' />
                    <br />
                    e_mail:
                    <asp:TextBox ID="e_mailTextBox" runat="server" Text='<%# Bind("e_mail") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    account:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />
                    password:
                    <asp:TextBox ID="passwordTextBox" runat="server" 
                        Text='<%# Bind("password") %>' />
                    <br />
                    id_number:
                    <asp:TextBox ID="id_numberTextBox" runat="server" 
                        Text='<%# Bind("id_number") %>' />
                    <br />
                    e_mail:
                    <asp:TextBox ID="e_mailTextBox" runat="server" Text='<%# Bind("e_mail") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text="你的密碼為："></asp:Label><asp:Label ID="Label2" runat="server" Text='<%#Eval("password") %>'></asp:Label>
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                SelectCommand="SELECT [password] FROM [member_data] WHERE (([account] = @account) AND ([id_number] = @id_number) AND ([e_mail] = @e_mail))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox3" Name="account" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox4" Name="id_number" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="e_mail" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View3" runat="server">
        <div class ="section">忘記帳號</div>
        <table class ="style1 ">
                              <tr>
                            <td class="style3">
                                <font color="#FF0000">*</font> 姓　　名</td>
                            <td class="style4">
                                <asp:TextBox ID="TextBox1" runat="server"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <font color="#FF0000">*</font> 身分證字號</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" />
                            </td>
                        </tr>
                       <tr>
                        </td>
                        <td class="style2 ">
                            <font color="#FF0000">*</font>E-mail</td>
                           <td>
                               <asp:TextBox ID="TextBox6" runat="server" />
                           </td>
                        </tr>
      </table>
      <div style ="text-align :center ">
                    <asp:Button ID="Button3" runat="server" Text="確定" onclick="Button1_Click" /><asp:Button ID="Button4" runat="server" Text="取消" /></div>
            <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2">
                <EditItemTemplate>
                    account:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />
                    password:
                    <asp:TextBox ID="passwordTextBox" runat="server" 
                        Text='<%# Bind("password") %>' />
                    <br />
                    id_number:
                    <asp:TextBox ID="id_numberTextBox" runat="server" 
                        Text='<%# Bind("id_number") %>' />
                    <br />
                    e_mail:
                    <asp:TextBox ID="e_mailTextBox" runat="server" Text='<%# Bind("e_mail") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    account:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />
                    password:
                    <asp:TextBox ID="passwordTextBox" runat="server" 
                        Text='<%# Bind("password") %>' />
                    <br />
                    id_number:
                    <asp:TextBox ID="id_numberTextBox" runat="server" 
                        Text='<%# Bind("id_number") %>' />
                    <br />
                    e_mail:
                    <asp:TextBox ID="e_mailTextBox" runat="server" Text='<%# Bind("e_mail") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text="你的帳號為："></asp:Label><asp:Label ID="Label2" runat="server" Text='<%#Eval("account") %>'></asp:Label>
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                
                SelectCommand="SELECT [account] FROM [member_data] WHERE (([name] = @name) AND ([id_number] = @id_number) AND ([e_mail] = @e_mail))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox5" Name="id_number" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox6" Name="e_mail" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:View>
    </asp:MultiView>

      </div>

</div>
</asp:Content>
