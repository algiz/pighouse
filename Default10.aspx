<%@ Page Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="Default10.aspx.vb" Inherits="Default10" title="未命名頁面" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css" >
.cenframe
{
    width :500px;
    margin:0 auto;
    
}
</style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="mainout">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
            DeleteCommand="DELETE FROM [message] WHERE [mess_id] = @mess_id" 
            InsertCommand="INSERT INTO [message] ([title], [mess_data], [content], [mess_m_id], [re_mes_id]) VALUES (@title, @mess_data, @content, @mess_m_id, @re_mes_id)" 
            SelectCommand="SELECT * FROM [message]" 
            UpdateCommand="UPDATE [message] SET [title] = @title, [mess_data] = @mess_data, [content] = @content, [mess_m_id] = @mess_m_id, [re_mes_id] = @re_mes_id WHERE [mess_id] = @mess_id">
            <DeleteParameters>
                <asp:Parameter Name="mess_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="mess_data" Type="DateTime" />
                <asp:Parameter Name="content" Type="String" />
                <asp:Parameter Name="mess_m_id" Type="Int32" />
                <asp:Parameter Name="re_mes_id" Type="Int32" />
                <asp:Parameter Name="mess_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="mess_data" Type="DateTime" />
                <asp:Parameter Name="content" Type="String" />
                <asp:Parameter Name="mess_m_id" Type="Int32" />
                <asp:Parameter Name="re_mes_id" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
        <div class ="cenframe">
    <div class="section">聯絡我</div>
    <table>
    <tr>
    <td>
    <asp:Label ID="Label1" runat="server" Text="標題"></asp:Label>
    </td>
    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td><asp:Label ID="Label2" runat="server" Text="內容"></asp:Label></td>
    <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" 
                Width="480px"></asp:TextBox></td>
    </tr>
    <tr>
    <td colspan ="2" align="center"><asp:Button ID="Button2" runat="server" Text="送出" /></td>
    </tr>
    </table>
</div>
</div>

</asp:Content>

