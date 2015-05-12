<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default22.aspx.vb" Inherits="Default22" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>未命名頁面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<object id="mediaPlayer" classid="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6" width="523" height="444"
codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701"

type="application/x-oleobject">'
<param name="autoStart" value="false"/>
<param name="url" value="Hit&Run01.avi" />
<param name="wmode" value="transparent" />
<param name="uiMode" value="full" />
<param name="loop" value="false" />
<embed id ="EmbedmediaPlayer"
type ="application/x-mplayer2"
src ="E:\sm8885392.mp4"
width ="523"
height ="444">
</embed>
</object>
    </div>
    </form>
</body>
</html>
