<%@ Page Language="VB" MasterPageFile="~/MasterPage5.master" AutoEventWireup="false" CodeFile="Default16.aspx.vb" Inherits="Default16" title="未命名頁面" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css" >

#outframe
{

}
.lframe
{
    float:left;
    width:500px;
    border :1px solid #b8b8b8;
    margin:10px;
    display :inline;
}
.rframe
{
    float:right;
    width:300px;
    border :1px solid #b8b8b8;
    margin:10px;
    display :inline;
}
.rinframe
{
    border:1px solid #b8b8b8;
    margin:10px;
    font-size:80%;
}
.linframe
{
    border:1px solid #b8b8b8;
    margin:10px;
    font-size:80%;
    line-height :1.6;
    height:13em;
}
.linframebottom
{
    float:right;
    width:120px;
    display :inline ;
    margin:30px 8px 8px 8px;
    text-align :justify ;
}
.linframetext
{
    width:320px;
    float :left;
    margin:10px;
    display :inline ;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="outframe">

<div class="lframe">
<div class="section">廣告商品</div>
<div class="linframe">

<div class="section">關鍵字廣告</div>
<div class="linframetext">

「關鍵字廣告」是一種精準有效的搜尋廣告，有點擊才付費。 買家在露天搜尋商品時，若其搜詢的字詞符合您所購買的關鍵字，該搜尋結果頁面便會播放您的商品廣告。除了曝光在搜尋結果頁外，相關特定的分類頁與商品頁中，也會大力曝光您的商品，精準地向目標買家播放廣告。
</div>
<div class="linframebottom "><asp:ImageButton ID="ImageButton6" runat="server" 
        Height="35px" ImageUrl="~/images/regbuttom.gif" Width="120px" /></div>
</div>


<div class="linframe" style="height:10em">

<div class="section">特色標題</div>
<div class="linframetext">
在「搜尋結果頁」、「分類頁」、及「賣家的全部商品頁」的商品列表中，您的商品將以"重點標題"或"亮眼底色"的廣告型態加強包裝，有如為商品加上聚光燈，從眾多商品中突顯示出來，輕鬆吸引買家注目！
</div>
<div class="linframebottom "><asp:ImageButton ID="ImageButton7" runat="server" 
        Height="35px" ImageUrl="~/images/regbuttom.gif" Width="120px" /></div>
</div>


<div class="linframe" style="height:10em">
<div class="section">優先曝光</div>

<div class="linframetext">
在「搜尋結果頁」、「分類頁」的商品列表中，您的商品將顯示於列表上方的「優先曝光專區」。
</div>
<div class="linframebottom "><asp:ImageButton ID="ImageButton5" runat="server" 
        Height="35px" ImageUrl="~/images/regbuttom.gif" Width="120px" /></div>
</div>


<div class="linframe" style="height:10em">
<div class="section">自訂商品擺設</div>
<div class="linframetext ">「自訂商店工具」提供最佳的行銷利器，藉由多重行銷版位以及精選商品輪播，增加產品曝光，無形中將更多商品介紹給您的買家。此外，透過自訂商品頁主題顏色，個人化商店，讓您的賣場與眾不同。
</div>
<div class="linframebottom "><asp:ImageButton ID="ImageButton4" runat="server" 
        Height="35px" ImageUrl="~/images/regbuttom.gif" Width="120px" /></div>

</div>


<div class="linframe" style="height:10em">
<div class="section">首頁/分類頁</div>
<div class="linframetext ">首頁與各大分類首頁是吸引最認真血拼的人瀏覽的地方，當你的商品進駐各分類首頁黃金版位時，就保證商品訊息必能送給最有興趣的買家！
</div>
<div class="linframebottom "><asp:ImageButton ID="ImageButton3" runat="server" 
        Height="35px" ImageUrl="~/images/regbuttom.gif" Width="120px" /></div>

</div>



<div class="linframe" style="height:10em">
<div class="section">店頭形象廣告</div>
<div class="linframetext ">在首頁與各大分類頁首頁掛上您的商店招牌，讓您立即打響自我品牌，建立專業銷售形象。
</div>
<div class="linframebottom "><asp:ImageButton ID="ImageButton2" runat="server" 
        Height="35px" ImageUrl="~/images/regbuttom.gif" Width="120px" /></div>

</div>
<div class="linframe" style="height:10em">
<div class="section">買排名</div>
<div class="linframetext ">「買排名」廣告將讓您的商品，在「搜尋結果頁」與「分類頁」的商品列表中，排名往前提升，優先成為眾人的注目焦點，廣告效果一極棒！
</div>

<div class="linframebottom "><asp:ImageButton ID="ImageButton1" runat="server" 
        Height="35px" ImageUrl="~/images/regbuttom.gif" Width="120px" /></div>
    
</div>
<br />
</div>
<div class="rframe">
<div class="rinframe">
<ul>
<li>加入會員</li>
<li>購買點數</li>
<li>儲值點數</li>
</ul>
</div>
<div class="rinframe">
<div class="section">點數商品</div>
<ul>
<li>廣告商品</li>
<li>購物商城</li>
</ul>

</div>
<div class="rinframe">
<div class="section">預留</div>
<ul>
<li>1</li>
<li>2</li>
<li>3</li>
</ul>

</div>
</div>
</div>
</asp:Content>

