<%@ Page Language="VB" MasterPageFile="~/MasterPage5.master" AutoEventWireup="false" CodeFile="Default5-1.aspx.vb" Inherits="Default5" title="會員中心 - 租圈" %>

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
<div class="userlist">
歡迎<asp:LoginName ID="LoginName1" runat="server" />登入
<div style="width:194px; height :3em; margin :10px;">
<asp:LinkButton ID="LinkButton5" runat="server" Text="本站服務" 
        CausesValidation="False"></asp:LinkButton>
</div>
<div style="width:194px; height :3em; margin :10px;">
<asp:LinkButton ID="LinkButton2" runat="server" Text="修改個人基本資料" 
        CausesValidation="False"></asp:LinkButton>
</div>
<div style="width:194px; height :3em; margin :10px;">
<asp:LinkButton ID="LinkButton1" runat="server" Text="修改密碼" 
        CausesValidation="False"></asp:LinkButton>
</div>
<div style="width:194px; height :3em; margin :10px;">
<asp:LinkButton ID="LinkButton7" runat="server" Text="點數儲值" 
        CausesValidation="False"></asp:LinkButton>
</div>
<div style ="float:left; width:100px;">
<div style="width:85px; height :3em; margin-left:10px; margin-top:10px; margin-right:5px;">
<asp:LinkButton ID="LinkButton6" runat="server" Text="點數儲值記錄" 
        CausesValidation="False"></asp:LinkButton>
</div>
<div style="width:85px; height :3em; margin-left:10px; margin-top:10px; margin-right:5px;">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default15.aspx">點數購買</asp:HyperLink>
</div>
</div>
<div style ="float:right; width:100px;">
<div style="width:85px; height :3em; margin-left:10px; margin-top:10px; margin-left:5px;">
    <asp:LinkButton ID="LinkButton8" runat="server" Text="常見問題" 
        CausesValidation="False"></asp:LinkButton>
</div>
<div style="width:85px; height :3em; margin-left:10px; margin-top:10px; margin-left:5px;">
    <asp:LinkButton ID="LinkButton9" runat="server" Text="新手上路" 
        CausesValidation="False"></asp:LinkButton>
</div>
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
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="4">
        <asp:View ID="View1" runat="server">
      <div class= "section ">修改密碼</div>
            <asp:FormView ID="FormView2" runat="server" DataKeyNames="id" 
                DataSourceID="SqlDataSource2" DefaultMode="Edit">

                <EditItemTemplate>
                        <table class ="style1 ">
                              <tr>
                            <td class="style3">
                                <font color="#FF0000">*</font> 舊　密　碼</td>
                            <td class="style4">
                            
                                <asp:TextBox ID="TextBox3" runat="server" 
                                    TextMode="Password" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox3" EnableClientScript="True" ErrorMessage="請輸入密碼"></asp:RequiredFieldValidator><asp:Label
                                        ID="Label4" runat="server" Text='<%#Eval("password") %>' Visible ="false" ></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <font color="#FF0000">*</font> 確認密碼</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                                    ErrorMessage="密碼不同!!請再確認"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                        <td class ="style2 ">
                        <font color="#FF0000">*</font>新　密　碼</td>
                        </td>
                        <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("password") %>' 
                                    TextMode="Password" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="TextBox1" EnableClientScript="True" ErrorMessage="請輸入密碼"></asp:RequiredFieldValidator>
                        </td>
                        </tr>
      </table>
      <div style ="text-align:center ">
                    <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="更新" onclick="UpdateButton_Click1" />
                    &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </div>
                </EditItemTemplate>
                <InsertItemTemplate>
                    password:
                    <asp:TextBox ID="passwordTextBox" runat="server" 
                        Text='<%# Bind("password") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    password:
                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="編輯" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="刪除" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                        CommandName="New" Text="新增" />
                </ItemTemplate>

            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                DeleteCommand="DELETE FROM [member_data] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [member_data] ([password]) VALUES (@password)" 
                SelectCommand="SELECT [id], [password] FROM [member_data]" 
                UpdateCommand="UPDATE [member_data] SET [password] = @password">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
        <div class= "section ">修改個人基本資料</div>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1"  DefaultMode="Edit">
                <EditItemTemplate>
                    <table class="style1">
                        <tr bgcolor="#ece9d8">
                            <td colspan="2">
                                個人資料<font color="#FF0000">( 必填 )</font>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <font color="#FF0000">*</font> 帳　　號</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("account") %>' ReadOnly="True" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <font color="#FF0000">*</font> 真實姓名</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("name") %>' />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox5" ErrorMessage="請輸入姓名"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <font color="#FF0000">*</font> 暱　　稱</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("nickname") %>' />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="TextBox6" ErrorMessage="請輸入暱稱"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <font color="#FF0000">*</font> 性　　別</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    SelectedValue='<%# Bind("gender") %>'>
                                    <asp:ListItem>男</asp:ListItem>
                                    <asp:ListItem>女</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <font color="#FF0000">*</font> 生　　日</td>
                            <td>
                                西元<asp:TextBox ID="TextBox7" runat="server" Width="80px"></asp:TextBox>
                                年<asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                </asp:DropDownList>
                                月<asp:DropDownList ID="DropDownList3" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>21</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>23</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>26</asp:ListItem>
                                    <asp:ListItem>27</asp:ListItem>
                                    <asp:ListItem>28</asp:ListItem>
                                    <asp:ListItem>29</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>31</asp:ListItem>
                                </asp:DropDownList>
                                日<asp:Label ID="Label2" runat="server" Text='<%# Bind("birthday") %>' Visible="False"></asp:Label>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                    ControlToValidate="TextBox7" ErrorMessage="請輸入正確的年份" 
                                    ValidationExpression="([1-2])([0]|[9])\d{2}"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="Textbox7" ErrorMessage="未輸入生日"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <font color="#FF0000">*</font> 身分證字號</td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("id_number") %>' ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr bgcolor="#ece9d8">
                            <td colspan="2">
                                聯絡資料<font color="#FF0000">( 必填 )</font>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <font color="#FF0000">*</font> 電子信箱</td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("e_mail") %>' ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <font color="#FF0000">*</font>居住地區</td>
                            <td>
                                郵遞區號<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                縣市<asp:DropDownList ID="DropDownList4" runat="server" style="height: 19px">
                                    <asp:ListItem>台北市</asp:ListItem>
                                    <asp:ListItem>基隆市</asp:ListItem>
                                    <asp:ListItem>台北縣</asp:ListItem>
                                    <asp:ListItem>宜蘭縣</asp:ListItem>
                                    <asp:ListItem>桃園縣</asp:ListItem>
                                    <asp:ListItem>新竹市</asp:ListItem>
                                    <asp:ListItem>新竹縣</asp:ListItem>
                                    <asp:ListItem>苗栗縣</asp:ListItem>
                                    <asp:ListItem>台中市</asp:ListItem>
                                    <asp:ListItem>台中縣</asp:ListItem>
                                    <asp:ListItem>彰化縣</asp:ListItem>
                                    <asp:ListItem>南投縣</asp:ListItem>
                                    <asp:ListItem>嘉義市</asp:ListItem>
                                    <asp:ListItem>嘉義縣</asp:ListItem>
                                    <asp:ListItem>雲林縣</asp:ListItem>
                                    <asp:ListItem>台南市</asp:ListItem>
                                    <asp:ListItem>台南縣</asp:ListItem>
                                    <asp:ListItem>高雄市</asp:ListItem>
                                    <asp:ListItem>高雄縣</asp:ListItem>
                                    <asp:ListItem>屏東縣</asp:ListItem>
                                    <asp:ListItem>花蓮縣</asp:ListItem>
                                    <asp:ListItem>台東縣</asp:ListItem>
                                    <asp:ListItem>澎湖縣</asp:ListItem>
                                    <asp:ListItem>金門縣</asp:ListItem>
                                    <asp:ListItem>連江縣</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                    ControlToValidate="TextBox10" ErrorMessage="請輸入正確的郵遞區號" 
                                    ValidationExpression="\d{3}((-)?\d{2})?"></asp:RegularExpressionValidator>
                                <br />
                                鄉鎮市及地址<asp:TextBox ID="TextBox11" runat="server" Visible="True"></asp:TextBox>
                                <br /><asp:Label ID="Label1" runat="server" Text='<%# Bind("location") %>' Visible="False"></asp:Label>
                                  
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ControlToValidate="Textbox11" ErrorMessage="未輸入地址"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <font color="#FF0000">*</font>電　　話</td>
                            <td class="style4">
                                <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                    ControlToValidate="TextBox12" ErrorMessage="請輸入正確的電話號碼" 
                                    ValidationExpression="([0])([1-9])\d{7,8}"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                    ControlToValidate="Textbox12" ErrorMessage="未輸入電話"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <font color="#FF0000">*</font>手　　機</td>
                            <td class="style4">
                                <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("mobile") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                    ControlToValidate="TextBox13" ErrorMessage="請輸入正確的手機號碼" 
                                    ValidationExpression="([0])([9])\d{8}"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                    ControlToValidate="Textbox2" ErrorMessage="未輸入手機"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr bgcolor="#ece9d8">
                            <td colspan="2">
                                個人設定 
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                個人喜好</td>
                            <td>
                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="3" 
                                    RepeatDirection="Horizontal">
                                    <asp:ListItem>書籍雜誌系列</asp:ListItem>
                                    <asp:ListItem>音樂影片系列</asp:ListItem>
                                    <asp:ListItem>3C電子系列</asp:ListItem>
                                   <asp:ListItem>辦公系列</asp:ListItem>
                                    <asp:ListItem>家電與家具系列</asp:ListItem>
                                    <asp:ListItem>服飾/精品/包/鞋系列</asp:ListItem>
                                    <asp:ListItem>日常/外出設備</asp:ListItem>
                                    <asp:ListItem>寵物用品</asp:ListItem>
                                        <asp:ListItem>不動產</asp:ListItem>
                                </asp:CheckBoxList>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("likes") %>' Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <div style="text-align :center ">
                    <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="確定" onclick="UpdateButton_Click" 
                        style="height: 21px" />
&nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="取消" />
                        </div>
                </EditItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                SelectCommand="SELECT [id], [account], [name], [nickname], [gender], [birthday], [id_number], [location], [e_mail], [phone], [mobile], [likes] FROM [member_data]" 
                DeleteCommand="DELETE FROM [member_data] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [member_data] ([account], [name], [nickname], [gender], [birthday], [id_number], [location], [e_mail], [phone], [mobile], [likes]) VALUES (@account, @name, @nickname, @gender, @birthday, @id_number, @location, @e_mail, @phone, @mobile, @likes)"     
                UpdateCommand="UPDATE [member_data] SET name=@name, nickname=@nickname, gender=@gender, birthday=@birthday, location=@location, phone=@phone, mobile=@mobile, likes=@likes">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="account" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="nickname" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter DbType="Datetime" Name="birthday" />
                    <asp:Parameter Name="id_number" Type="String" />
                    <asp:Parameter Name="location" Type="String" />
                    <asp:Parameter Name="e_mail" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="mobile" Type="String" />
                    <asp:Parameter Name="likes" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="account" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="nickname" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter DbType="Datetime" Name="birthday" />
                    <asp:Parameter Name="id_number" Type="String" />
                    <asp:Parameter Name="location" Type="String" />
                    <asp:Parameter Name="e_mail" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="mobile" Type="String" />
                    <asp:Parameter Name="likes" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View3" runat="server">
        <div class ="section ">點數儲值</div>
        <div style ="width :300px; margin :10px auto; text-align :center ; font-size :80%;">
        請輸入卡片上的12碼序號<br />
            <asp:TextBox ID="TextBox14" runat="server" Width="300"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="送出" CausesValidation="False" />
        
        </div>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="point_id,id" DataSourceID="SqlDataSource3" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="no" HeaderText="序號" SortExpression="no" />
                    <asp:BoundField DataField="point" HeaderText="點數" SortExpression="point" />
                    <asp:BoundField DataField="use_time" HeaderText="使用時間" 
                        SortExpression="use_time" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                SelectCommand="SELECT * FROM [point_center],member_data WHERE po_m_id = id">
            </asp:SqlDataSource>
        
        </asp:View>
        <asp:View ID="View5" runat="server">
      <div class= "section ">本站服務</div>
      <div class="limenu">
      <ul>
      <li><asp:ImageButton ID="ImageButton1" runat="server" 
              ImageUrl="~/images/home.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton2" runat="server" 
              ImageUrl="~/images/updata.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/msg.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton4" runat="server" 
              ImageUrl="~/images/Points.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton5" runat="server" 
              ImageUrl="~/images/Bonus.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/buy.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton7" runat="server" 
              ImageUrl="~/images/Rules.jpg" /></li>
      <li><asp:ImageButton ID="ImageButton8" runat="server" 
              ImageUrl="~/images/callme.jpg" /></li>
      </ul>
      </div>
        </asp:View>
    </asp:MultiView>

      </div>

</div>
</asp:Content>
