<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TabTest.aspx.vb" Inherits="Default8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>未命名頁面</title>
<script type="text/javascript" src="jquery-1.2.3.pack.js"></script>
<script type="text/javascript" src="jquery.idTabs.min.js"></script>

<style type ="text/css" >
.idTabs
{
    background-color:#ffffff;
    margin :0;
    padding:0;
    height :30px;
    margin-bottom:20px;
}

    
.idTabs li
{
 text-align :left;
 color:#66cc00;
 font-size :80%;
 font-weight :bold;
 border-bottom :3px dotted #FF6600;
 border-left:8px solid #FF9900;
 line-height :200%;
 padding-left :10px;  
 float :left ;
 width: 100px;
 list-style: none;
}
#wrapper
{
    border:1px solid #b8b8b8;
}
</style>
</head>
<body>
    <form id="form1" runat="server">

          <ul class="idTabs">
            <li><a href="#jquery">jQuery</a></li>
            <li><a href="#official">Tabs 3</a></li>
          </ul>
          <div id="jquery">If you haven't checked out <a href="http://www.jquery.com">jQuery</a> yet, I highly recommend it.</div>

          <div id="official">idTabs is only a simple implimentation of tabs. If you want advanced features like ajax tabs, then I highly recommend the official <a href="http://www.stilbuero.de/jquery/tabs_3/">Tabs 3 plugin</a>.</div>


    </form>
</body>
</html>
