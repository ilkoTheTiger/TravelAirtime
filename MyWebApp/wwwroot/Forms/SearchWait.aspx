<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchWait.aspx.cs" Inherits="Forms_SearchWait" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Wait</title>
 <link href="../Css/Travelairtimecss.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="../js/AjaxFunctions.js" type="text/javascript"></script>

    <script language="javascript" src="../js/redirect.js" type="text/javascript">
    </script>

</head>
<body onload="checkStatus(document.getElementById('form1').hidNextPage.value);">
    <form id="form1" method="post" runat="server">
   <div style="border-color:#CC6600; size:1px; "> <table width="300" bordercolor="#000000" border="0"
        cellpadding="0" cellspacing="0" id="Table1" style="z-index: 101; left: 422px; position: absolute; top: 76px; width: 416px; height: 243px; background-color: #FFFFFF; layer-background-color: #FFFFFF; border: 1px none #993300;" name="Table1">
        <tr>
            <td id='err'>&nbsp;          </td>
        </tr>
        <tr>
          <td height="73" align="center" bgcolor="#FFFFFF"  ><img src="../images/logo.jpg" width="306" height="72" /></td>
        </tr>
        <tr>
            <td id='err'>&nbsp;          </td>
        </tr>
       
        <tr>
            <td align="center" >
                <div align="center" style="width:380px;">
                    <span class="BS-BookNow">Please wait, The Lowest Price Flight Search is being processed.</span></div>            </td>
        </tr>
        <tr>
            <td id='err' height="60">
                <div align="center">
                    <img src="../images/loader-1.gif"></div>            </td>
        </tr>
		 <tr>
            <td align="center" ><div  align="center" style="width:380px;">
                    <span class="GTButtonsbottomtxtcolor">Please Call us on </span><span class="underconstruction"> 07876 747747</span><span class="GTButtonsbottomtxtcolor"> to speak to one of our Travel Specialists, with any Special Requirements you may have.</span></div>          </td>
        </tr>
        <tr>
            <td>
                <center>
                </center>            </td>
        </tr>
        <tr>
            <td align="center" valign="top" id="err1">&nbsp;          </td>
        </tr>
    </table></div>
    <input style="z-index: 102; left: 192px; position: absolute; top: 248px" type="hidden"
        value="<%=Session["nextPageUrl"]%>" id="hidNextPage" />
</form>
</body>
</html>
