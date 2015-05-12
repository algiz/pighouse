<%@ Page Language="VB" MasterPageFile="~/MasterPage5.master" AutoEventWireup="false" CodeFile="Default15.aspx.vb" Inherits="Default15" title="未命名頁面" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

#cframe
{

position: relative;
text-align: left;
width: 700px;
margin-left: auto;
margin-right: auto;
margin-top:100px;
}

.inframe
{
    margin-top:10px;
    border:1px solid #b8b8b8;
    height:12em;
}
.inlframe
{
   float :left;
   width:400px;
   margin-left:10px;
   margin-top:10px;
   display :inline ;
   font-size:80%;
}
.inrframe
{
    float:right;
    width:250px;
    margin-right :10px;
    margin-top:10px;
    display :inline ;
    
}
.radiobuttom
{
    line-height :2.0;   
}
</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="con">

<div id="cframe">
<div class="section">購買點數</div>
<div class="inframe">
<div class="inlframe">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
        CssClass="radiobuttom">
        <asp:ListItem Value="100">100點　　　　　　　　&nbsp;&nbsp;紅利點數：10點</asp:ListItem>
        <asp:ListItem Value="500">500點　　　　　　　　&nbsp;&nbsp;紅利點數：50點</asp:ListItem>
        <asp:ListItem Value="1000">1000點　　　　　　　　紅利點數：100點</asp:ListItem>
        <asp:ListItem Value="2000">2000點　　　　　　　　紅利點數：200點</asp:ListItem>
        <asp:ListItem Value="5000">5000點　　　　　　　　紅利點數：500點</asp:ListItem>
    </asp:RadioButtonList>
    
    <asp:Label ID="Label1" runat="server" Text="匯款帳號後五碼"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        DeleteCommand="DELETE FROM [buypoint] WHERE [bp_id] = @bp_id" 
        InsertCommand="INSERT INTO buypoint(bp_point, bp_member, bp_moneyaccount, bp_ok) VALUES (@bp_point, @bp_member, @bp_moneyaccount,@bp_ok)" 
        SelectCommand="SELECT * FROM [buypoint]" 
        UpdateCommand="UPDATE [buypoint] SET [bp_point] = @bp_point, [bp_member] = @bp_member, [bp_moneyaccount] = @bp_moneyaccount WHERE [bp_id] = @bp_id">
        <DeleteParameters>
            <asp:Parameter Name="bp_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="bp_point" Type="Int32" />
            <asp:Parameter Name="bp_member" Type="Int32" />
            <asp:Parameter Name="bp_moneyaccount" Type="String" />
            <asp:Parameter Name="bp_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="RadioButtonList1" Name="bp_point" 
                PropertyName="SelectedValue" Type="Int32" />
            <asp:SessionParameter Name="bp_member" SessionField="u_id" Type="Int32" />
            <asp:ControlParameter ControlID="TextBox2" Name="bp_moneyaccount" 
                PropertyName="Text" Type="String" />
            <asp:Parameter DefaultValue="0" Name="bp_ok" />
        </InsertParameters>
    </asp:SqlDataSource>
    
  </div>
<div class="inrframe">
<div class="section">小小提醒</div>
<div style="font-size :80%">
購買點數時，請勿重複點擊，以免重複購買
</div> 
</div>

</div>
</div>
<div style="text-align:center"><asp:Button ID="Button1" runat="server" Text="購買" />
    <asp:Button ID="Button2" runat="server" Text="取消" /></div>

</div>
<br />
</asp:Content>

