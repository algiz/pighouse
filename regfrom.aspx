<%@ Page Language="VB" AutoEventWireup="false" CodeFile="regfrom.aspx.vb" Inherits="regfrom" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>註冊租圈會員 - 租圈</title>
    <style type ="text/css">
        #wrapper 
        {
        position :relative ;
        text-align :left ;
        width: 605px;
        margin-left :auto ;
        margin-right :auto ;
        border:1px solid #b8b8b8; 
        background:#FFFFFF;
        }
        td
        {
        font-family: "新細明體";
	    font-size: 13px;
	    color: #666666;
	    line-height: 20px;
        }
        .regheadbg
        {
            background-image :url("images/regh.gif");
        }
        .regfbg
        {
            background-image :url("images/regf.gif");
        }
        .style1
        {
            width: 100%;
            border :0;

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
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
            DeleteCommand="DELETE FROM [member_data] WHERE [id] = @original_id AND [account] = @original_account AND [password] = @original_password AND [name] = @original_name AND [nickname] = @original_nickname AND [gender] = @original_gender AND [birthday] = @original_birthday AND [id_number] = @original_id_number AND [e_mail] = @original_e_mail AND [location] = @original_location AND [phone] = @original_phone AND [mobile] = @original_mobile AND [likes] = @original_likes AND [evaluat] = @original_evaluat AND (([about_me] = @original_about_me) OR ([about_me] IS NULL AND @original_about_me IS NULL))" 
            InsertCommand="INSERT INTO [member_data] ([account], [password], [name], [nickname], [gender], [birthday], [id_number], [e_mail], [location], [phone], [mobile], [likes], [evaluat], [about_me]) VALUES (@account, @password, @name, @nickname, @gender, @birthday, @id_number, @e_mail, @location, @phone, @mobile, @likes, @evaluat, @about_me)" 
            SelectCommand="SELECT * FROM [member_data]" 
            
            UpdateCommand="UPDATE [member_data] SET [account] = @account, [password] = @password, [name] = @name, [nickname] = @nickname, [gender] = @gender, [birthday] = @birthday, [id_number] = @id_number, [e_mail] = @e_mail, [location] = @location, [phone] = @phone, [mobile] = @mobile, [likes] = @likes, [evaluat] = @evaluat, [about_me] = @about_me WHERE [id] = @original_id AND [account] = @original_account AND [password] = @original_password AND [name] = @original_name AND [nickname] = @original_nickname AND [gender] = @original_gender AND [birthday] = @original_birthday AND [id_number] = @original_id_number AND [e_mail] = @original_e_mail AND [location] = @original_location AND [phone] = @original_phone AND [mobile] = @original_mobile AND [likes] = @original_likes AND [evaluat] = @original_evaluat AND (([about_me] = @original_about_me) OR ([about_me] IS NULL AND @original_about_me IS NULL))" 
            ConflictDetection="CompareAllValues" 
            OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_account" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_nickname" Type="String" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter DbType="Date" Name="original_birthday" />
                <asp:Parameter Name="original_id_number" Type="String" />
                <asp:Parameter Name="original_e_mail" Type="String" />
                <asp:Parameter Name="original_location" Type="String" />
                <asp:Parameter Name="original_phone" Type="String" />
                <asp:Parameter Name="original_mobile" Type="String" />
                <asp:Parameter Name="original_likes" Type="String" />
                <asp:Parameter Name="original_evaluat" Type="Int32" />
                <asp:Parameter Name="original_about_me" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="nickname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="birthday" DbType="Date" />
                <asp:Parameter Name="id_number" Type="String" />
                <asp:Parameter Name="e_mail" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="likes" Type="String" />
                <asp:Parameter Name="evaluat" Type="Int32" />
                <asp:Parameter Name="about_me" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_account" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_nickname" Type="String" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter DbType="Date" Name="original_birthday" />
                <asp:Parameter Name="original_id_number" Type="String" />
                <asp:Parameter Name="original_e_mail" Type="String" />
                <asp:Parameter Name="original_location" Type="String" />
                <asp:Parameter Name="original_phone" Type="String" />
                <asp:Parameter Name="original_mobile" Type="String" />
                <asp:Parameter Name="original_likes" Type="String" />
                <asp:Parameter Name="original_evaluat" Type="Int32" />
                <asp:Parameter Name="original_about_me" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="nickname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="birthday" DbType="DateTime" />
                <asp:Parameter Name="id_number" Type="String" />
                <asp:Parameter Name="e_mail" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="likes" Type="String" />
                <asp:Parameter Name="evaluat" Type="Int32" />
                <asp:Parameter Name="about_me" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                id:
                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                <br />
                account:
                <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                <br />
                password:
                <asp:TextBox ID="passwordTextBox" runat="server" 
                    Text='<%# Bind("password") %>' />
                <br />
                re_password:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                name:
                <asp:TextBox ID="nicknameTextBox" runat="server" 
                    Text='<%# Bind("nickname") %>' />
                <br />
                nickname:
                <asp:TextBox ID="genderTextBox" runat="server" 
                    Text='<%# Bind("gender") %>' />
                <br />
                gender:
                <asp:TextBox ID="birthdayTextBox" runat="server" 
                    Text='<%# Bind("birthday") %>' />
                <br />
                birthday:
                <asp:TextBox ID="id_numberTextBox" runat="server" 
                    Text='<%# Bind("id_number") %>' />
                <br />
                id_number:
                <asp:TextBox ID="e_mailTextBox" runat="server" 
                    Text='<%# Bind("e_mail") %>' />
                <br />
                e_mail:
                <asp:TextBox ID="locationTextBox" runat="server" 
                    Text='<%# Bind("location") %>' />
                <br />
                location:
                <asp:TextBox ID="phoneTextBox" runat="server" 
                    Text='<%# Bind("phone") %>' />
                <br />
                phone:
                <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
                <br />
                mobile:
                <asp:TextBox ID="likesTextBox" runat="server" Text='<%# Bind("likes") %>' />
                <br />
                likes:
                <asp:TextBox ID="evaluatTextBox" runat="server" Text='<%# Bind("evaluat") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
             <table width ="605px" border="0" cellspacing="0" cellpadding="0">
        <tr>
        <td class="regheadbg" height="40px"></td>
        </tr>
        <tr>
        <td>請安心填寫下列資料，本站將善盡保密之責(<font color="#FF0000">*</font> 為必填)
        </td>
        </tr>
        <tr>
        <td height="1px" bgcolor="#FF3300">
        </td>
        </tr>
        </table>
        <table class="style1">
        <tr bgcolor="#ece9d8"> 
            <td colspan="2">個人資料<font color="#FF0000">( 必填 )</font>
            </td>
        </tr>

            <tr>
                <td class="style2">
                    <font color="#FF0000">*</font> 
                    帳　　號</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("account") %>' />
                    (6-12個英文數字)<asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="檢查帳號" 
                        CausesValidation="False" />
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="帳號違反規則" 
                        ValidationExpression="\w{6,12}"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="未輸入帳號" ControlToValidate="Textbox2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <font color="#FF0000">*</font> 
                    密　　碼</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("password") %>' 
                        TextMode="Password" />
                                    (6-12個英文數字)<br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                        runat="server" ControlToValidate="TextBox3" ErrorMessage="請輸入密碼" 
                        EnableClientScript="True"></asp:RequiredFieldValidator>
                                    </td>
            </tr>
            <tr>
                <td class="style2">
                    <font color="#FF0000">*</font> 
                    確認密碼</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" />
                    (請再輸入密碼)<br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                        ErrorMessage="密碼不同!!請再確認"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <font color="#FF0000">*</font> 
                    真實姓名</td>
                <td>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="請輸入姓名"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <font color="#FF0000">*</font> 
                    暱　　稱</td>
                <td>
                <asp:TextBox ID="TextBox6" runat="server"   Text='<%# Bind("nickname") %>' />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="請輸入暱稱"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <font color="#FF0000">*</font> 
                    性　　別</td>
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
                    <font color="#FF0000">*</font> 
                    生　　日</td>
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
                    日<asp:Label ID="Label2" runat="server" Text='<%# Bind("birthday") %>' 
                        Visible="False"></asp:Label>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="請輸入正確的年份" 
                        ValidationExpression="([1-2])([0]|[9])\d{2}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="未輸入生日" ControlToValidate="Textbox7"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="style2">
                    <font color="#FF0000">*</font> 
                    身分證字號</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("id_number") %>'></asp:TextBox>
                    (例:H123456789)<br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="請輸入正確的身份證" 
                        ValidationExpression="([A-Z]|[a-z])([1-2])\d{8}"></asp:RegularExpressionValidator>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="未輸入身分證字號" ControlToValidate="Textbox8"></asp:RequiredFieldValidator>
                </td>
            </tr>
      <tr bgcolor="#ece9d8"> 
            <td colspan="2">聯絡資料<font color="#FF0000">( 必填 )</font>
     </td>
        </tr>
                    <tr>
                <td class="style2">
                    <font color="#FF0000">*</font> 電子信箱</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("e_mail") %>'></asp:TextBox>
                    (例:aaa@aaa.com)<asp:Button ID="Button4" runat="server" CausesValidation="False" 
                        onclick="Button4_Click" Text="檢查信箱" />
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="請輸入正確的E-MAIL" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="未輸入電子信箱" ControlToValidate="Textbox9"></asp:RequiredFieldValidator>
                </td>
            </tr>
                        <tr>
                <td class="style2"><font color="#FF0000">*</font>居住地區</td>
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
                        ErrorMessage="請輸入正確的郵遞區號" ControlToValidate="TextBox10" 
                        ValidationExpression="\d{3}((-)?\d{2})?"></asp:RegularExpressionValidator>
                    <br />
                    鄉鎮市及地址<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("location") %>' 
                        Visible="False"></asp:Label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="未輸入地址" ControlToValidate="Textbox11"></asp:RequiredFieldValidator>
                            </td>
            </tr>
            <tr>
                            <td class="style3"><font color="#FF0000">*</font>電　　話</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                            (例:031234567)<br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" 
                        runat="server" ControlToValidate="TextBox12" ErrorMessage="請輸入正確的電話號碼" 
                        ValidationExpression="([0])([1-9])\d{7,8}"></asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="未輸入電話" ControlToValidate="Textbox12"></asp:RequiredFieldValidator>
                            </td>
            </tr>
            <tr>
                            <td class="style3"><font color="#FF0000">*</font>手　　機</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("mobile") %>'></asp:TextBox>
                            (例:0981144222)<br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                        runat="server" ControlToValidate="TextBox13" ErrorMessage="請輸入正確的手機號碼" 
                        ValidationExpression="([0])([9])\d{8}"></asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="未輸入手機" ControlToValidate="Textbox2"></asp:RequiredFieldValidator>
                            </td>
            </tr>
      <tr bgcolor="#ece9d8"> 
            <td colspan="2">個人設定
     </td>
        </tr>
                    <tr>
                            <td class="style2">個人喜好</td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
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
                    <asp:Label ID="Label3" runat="server" Text='<%#Bind("likes") %>' Visible="False"></asp:Label>
                </td>
            </tr>
                  <tr> 
            <td colspan="2" align="center" >
                <font size="-1"><b>會員規約</b></font></td>
        </tr>
        </table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td align="center">
    <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" 
        Width="550px" Font-Size="Small">一、本會員合約雙方為「租圈」與「租圈」會員所共同遵守。 
    1.本會員合約內容包括此正文及所有租圈已經公怖的或將來可能公佈的各類政策規範。所有政策規範為會員合約不可分割的一部分，與會員合約正文具有同等法律效力。 
    2.會員在使用租圈提供的各項服務的同時，承諾接受並遵守各項相關規則的規定。租圈有權根據需要不定時更新、修改本會員合約或各類規則，如本會員合約有任何變更，將在網站上公告並通知會員。如會員不同意相關變更，必須停止使用“服務”。修訂的內容一經租圈公告後，立即自動生效，並成為本會員合約的一部分。登入或繼續使用“服務”將表示會員接受經修訂的規定。 
    3.會員在確認本會員合約後，此會員合約即在會員和租圈之間產生法律效力。請會員務必在註冊之前認真閱讀全部會員合約內容，如有任何疑問，可向租圈客服諮詢。 
    a.無論會員事實上是否在註冊之前認真閱讀了本會員合約，只要會員點選協議正本下方的「我同意」按鈕並按照註冊程式成功註冊為會員，會員的行為即表示其同意並簽署了本會員合約。 
    b.本會員合約不涉及會員與租圈其他會員之間因網上交易而產生的法律關係及法律糾紛。 二、定義 
    1.會員：會員必須是具備完全民事行為能力的自然人，或者是具有合法經營資格的法人。 
    a.只要是年滿十八歲且領有身分證之國人就可以註冊成為會員。十八歲以上未滿二十歲之未成年人在租圈上進行交易時，應得到法定代理人同意或由法定代理人陪同，並遵守本合約及相關法律規定。若該未成年會員與交易相對人或其他第三人，因使用本網站服務所發生之糾紛，本公司概不負責。 
    b.年滿二十歲之成年人需自行負完全的行為能力責任。無民事行為能力人、限制民事行為能力人以及無經營或特定經營資格的組織不當註冊為會員，其與租圈之間的會員合約自始無效，一經發現，有權立即註銷該會員資格，並追究其使用租圈“服務”的一切法律責任。 
    2.會員註冊：會員註冊是指網友至租圈，並按要求填寫相關資訊並確認同意履行相關會員合約的過程。 
    3.租圈網站僅作為交易平台：對於被刊登物品的品質、安全及合法性，刊登物品的真實與正確性，以及賣方出售其物品與買方購買物品的能力，租圈均無法控制，且不保證物品成交後買家或賣家將實際完成交易。租圈提醒會員應該通過自己的謹慎判斷確定物品及相關資訊的真實性、合法性和有效性。 
    三、費用 1.目前租圈所提供之各項服務均為免費，會保留將來使用服務收費與否之決定權。 
    2.會員因為進行交易而發生的所有應納稅賦，以及一切硬體、軟體、服務及其它方面的費用均由會員負責支付。 四、會員權利和義務： 
    1.會員有權利擁有自己在租圈上的會員帳號及交易密碼，並有權利使用自己的會員帳號及密碼隨時登入租圈平台。會員不得以任何形式擅自轉讓或授權他人使用自己的會員帳號。 
    2.會員有權根據本服務會員合約的規定以及租圈網上公佈的相關規則，使用搜尋、查詢、出價、刊登、租賃物品等功能。以及給予交易對方信用評價、參與相關活動以及有權享受租圈提供的其他的有關資訊服務。 
    3.會員如發現其他會員有違法或違反本會員合約的行為，可以向租圈進行檢舉反應。如會員因交易與其他會員產生訴訟，會員有權透過程序要求租圈提供相關資料。 
    4.會員有義務在註冊時提供自己的真實資料，並保證如電子郵件位址、連絡電話、通訊地址等內容的有效性，保證租圈及其他會員皆可以通過上述聯繫方式與自己進行聯繫。同時，會員也有義務在相關資料實際變更及更新有關註冊資料。會員保證不以他人資料進行註冊或認證。 
    5.會員應當保證在使用租圈平台進行交易過程中遵守誠實信用原則，不在交易過程中採取不正當競爭行為（如假出租），不擾亂網站的正常秩序（如駭客行為），不從事與網上交易無關的行為（如亂發廣告垃圾信）。 
    6.會員不應在租圈上惡意毀謗其他會員，或採取不正當手段提高自身的信用評價或降低其他會員的信用評價。 7.會員在租圈不得刊登各類違法或違規物品或內容。 
    8.會員在租圈不得承租國家禁止的或限制的物品、不得買賣侵犯他人智慧財產權或其他合法權益的物品，也不得買賣違反公序良俗的物品、或認為不適合在租圈銷售的物品。 
    9.會員承諾自己在使用租圈時的所有行為均遵守國家法律、法規和租圈的相關規範以及各種社會公序良俗。如有違反而導致任何法律後果，會員將以自己的名義承擔所有的法律責任。 
    10.會員同意不對租圈上任何資料作商業性利用，包括不限於在未經事先書面同意的情況下，以複製、散布等方式使用在露天拍賣上的任何資料。 五、租圈的權利和義務 
    1.租圈有義務在現有技術上維護整個平台的正常運行，並努力提升和改進技術，使會員拍賣交易活動得以順利進行。 
    2.會員在註冊或使用租圈時發生任何問題或反應的情況，應在合理的時間內作出回覆。 
    3.對於會員在租圈平台上的不當行為，或其他任何認為應當終止服務的情況，租圈須事先徵求會員的同意有權隨時作出刪除相關資訊、終止服務提供等處理。 
    4.因網路特殊性，租圈無法對所有會員的註冊資料、所有的交易行為以及與交易有關的其他事項進行事先審查，但如存在下列情況： 
    a.會員或其他第三方，向租圈檢舉有違法或不當行為的，以普通非專業交易者的知識標準對相關內容進行判斷，可以明顯認為這些內容或行為具有違法或不當性質時。租圈有權根據不同情況選擇保留或刪除相關資訊或繼續、停止對該會員提供服務，並追究相關法律責任。 
    5.會員在租圈交易過程中如與其他會員因交易產生糾紛，請求租圈從中予以協調，經審核後，租圈有權透過電子郵件或電話聯繫向糾紛雙方瞭解情況，並將所瞭解的情況透過電子郵件或電話互相通知對方。 
    6.會員因在租圈上交易而與其他會員產生訴訟，會員可透過司法部門或行政部門依照法定程序要求租圈提供相關資料，租圈應積極配合並提供有關資料。 
    7.租圈有權對會員的註冊資料及交易行為進行查閱，發現註冊資料或交易行為中存在任何問題或懷疑，均有權向會員發出詢問及要求改正的通知或者直接作出刪除等處理。 
    8.經國家生效法律文書或行政處罰決定確認會員存在違法行為，或者租圈有足夠事實依據可以認定會員存在違法或違反服務會員合約行為的，有權在租圈交易平台及所在網站上以網路發布形式公佈會員的違法行為。 
    9.資料使用權：任何資料一經您上載、傳送、輸入或提供予租圈時，視為您已允許依照隱私權政策內規範下，使用、修改、重製、公開播送、改作、散布、發行、公開發表、公開傳輸該等資料，並得將前述權利轉授權他人，您對此絕無異議。您並應保證租圈使用、修改、重製、公開播送、改作、散布、發行、公開發表、公開傳輸、轉授權該等資料，不致侵害任何第三人之智慧財產權，否則應對租圈負損害賠償責任（包括但不限於訴訟費用及律師費用等）。 
    六、服務的中斷和終止： 1.如會員向租圈提出註銷帳號時，經租圈審核同意，註銷該會員帳號，會員即解除與租圈的會員合約關係。但註銷該會員帳號後，租圈仍保留下列權利： 
    a.會員帳號註銷後，有權保留該會員的註冊資料及以前的交易行為記錄。 
    b.會員帳號註銷後，如會員在登出前在租圈平台上存在違法或違反合約的行為，仍可行使本會員合約所規定的權利。 
    2.在下列情況下得立即暫停、中斷或終止您的會員資格並拒絕提供您租圈的服務，且對使用者所生之任何直接或間接損害，不負任何責任： 
    a.會員違反本會員合約相關規定時，租圈有權終止向該會員提供服務。將在中斷服務時通知會員。但如該會員在被租圈終止提供服務後，再一次直接或間接或以他人名義註冊為該會員，將有權再次單方面終止向該會員提供服務。 
    b.如租圈透過會員提供的資訊與會員聯繫時，發現會員在註冊時填寫的電子郵箱或電話已不存在，經租圈以其他聯繫方式通知會員更改，而會員在二個工作日內仍未能更正者，露天拍賣有權終止向該會員提供服務。 
    c.一旦發現會員註冊資料中主要內容是虛假的，權隨時終止向該會員提供服務。 d.本會員合約終止或更新時，會員明示不願接受新的服務會員合約。 
    e.租圈相信您的行為可能對您或租圈的會員造成法律上的責任。 f.本服務相關軟硬體設備進行搬遷、更換、升級、保養或維修。 
    g.因第三人之行為、天災、事變或其他不可抗力所致之服務停止或中斷。 h.使用本服務的會員使用流量超過原先網站設定最大量時所致之服務停止或中斷。 
    3.因會員違反法律法規或者違反服務會員合約規定而致使租圈暫停、中斷、終止對會員服務的，對於服務暫停、中斷、終止之前會員交易行為依下列原則處理： 
    a.服務暫停、中斷、終止之前，會員已經上傳至租圈平台上且尚未成交的物品，有權刪除此項物品的相關資訊。 
    b.服務暫停、中斷、終止之前，會員已經就其他會員出售的物品作出要約，但交易尚未結束，租圈有權刪除該會員的相關要約。 
    c.服務暫停、中斷、終止之前，會員已經與另一會員就具體交易達成一致共識，租圈可以不刪除該項交易，但有權將會員被暫停、中斷或終止服務的情況通知會員的交易對方。 
    七、責任範圍： 
    1.會員明確理解和同意，租圈不對因下述任一情況而導致的任何損害賠償承擔責任，包括但不限於利潤、商譽、使用、資料等方面的損失或其他無形損失的損害賠償（無論是否已被告知該等損害賠償的可能性）： 
    a.使用或未能使用「服務」。 b.未經授權的第三方使用、更改會員帳號或個人資料。 c.第三方對「服務」的聲明或關於「服務」的行為。 
    d.或非因租圈的原因而引起的與「服務」有關的任何其他事宜。 
    2.會員明確理解並同意，如因其違反有關法律或者本會員合約之規定，使租圈遭受任何損失，受到任何第三方的索賠，或任何主管機關的處罰，會員應對租圈提供補償，包括合理的律師費用。 
    八、隱私權政策： (未定)
</asp:TextBox>
</td>
</tr>
<tr>
<td align="center" >
    <asp:Button ID="Button1" runat="server" Text="我接受以上條款並進行下一步" 
        CommandName="Insert" onclick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="我不接受並回到上一頁" 
        CausesValidation="False" CommandName="Cancel" onclick="Button2_Click" />

</td>
</tr>
<tr>
<td class="regfbg" height="40px">
</td>
</tr>
</table>
            </InsertItemTemplate>
            <ItemTemplate>
                id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                account:
                <asp:Label ID="accountLabel" runat="server" Text='<%# Bind("account") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
                <br />
                re_password:
                <asp:Label ID="nameLabel" runat="server" 
                    Text='<%# Bind("name") %>' />
                <br />
                name:
                <asp:Label ID="nicknameLabel" runat="server" Text='<%# Bind("nickname") %>' />
                <br />
                nickname:
                <asp:Label ID="genderLabel" runat="server" Text='<%# Bind("gender") %>' />
                <br />
                gender:
                <asp:Label ID="birthdayLabel" runat="server" Text='<%# Bind("birthday") %>' />
                <br />
                birthday:
                <asp:Label ID="id_numberLabel" runat="server" Text='<%# Bind("id_number") %>' />
                <br />
                id_number:
                <asp:Label ID="e_mailLabel" runat="server" Text='<%# Bind("e_mail") %>' />
                <br />
                e_mail:
                <asp:Label ID="locationLabel" runat="server" Text='<%# Bind("location") %>' />
                <br />
                location:
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                phone:
                <asp:Label ID="mobileLabel" runat="server" Text='<%# Bind("mobile") %>' />
                <br />
                mobile:
                <asp:Label ID="likesLabel" runat="server" Text='<%# Bind("likes") %>' />
                <br />
                likes:
                <asp:Label ID="evaluatLabel" runat="server" Text='<%# Bind("evaluat") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="編輯" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="刪除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="新增" />
            </ItemTemplate>
        </asp:FormView>
        
    </div>
    </form>
</body>
</html>
