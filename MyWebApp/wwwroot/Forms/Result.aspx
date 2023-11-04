<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Forms_Result" %>

<%@ PreviousPageType VirtualPath="~/Default.aspx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Travel Air Time : Fantastic Fares Worldwide Book Now</title>
    <meta name="description" content="Book Cheap Air Tickets, Flight Tickets at lowest airfares with Travel Air Time. We offer best deals on Domestic and International Flights booking">
    <meta name="keywords" content="Cheap Air Fares Worldwide, direct flights, flights from UK airport, online reservation, cheap flights, flights worldwide">
  
    <link href="../Css/Travelairtimecss.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript">
        function checkTripType(_id) {
            var rId = _id.id + '_0';
            if (document.getElementById(rId).checked) {
                document.getElementById('RDate').style.display = 'block';
                document.getElementById('txtReturnDate').style.display = 'block';
            }
            else {
                document.getElementById('RDate').style.display = 'none';
                document.getElementById('txtReturnDate').style.display = 'none';
                document.getElementById('txtReturnDate').value = "";
            }

        }

        function ClearSearch() {
            document.getElementById('ddlLeavingFrom').selectedIndex = 0;
            document.getElementById('txtDestination').value = "";
            document.getElementById('txtDepartDate').value = "";
            document.getElementById('txtReturnDate').value = "";
            document.getElementById('ddlAirlines').selectedIndex = 0;
            document.getElementById('ddlClass').selectedIndex = 0;
            document.getElementById('ddlAdult').selectedIndex = 0;
            document.getElementById('ddlChild').selectedIndex = 0;
            document.getElementById('ddlInfant').selectedIndex = 0;
        }

        function HideScroll() {
            scrollTo(0, 0);
            document.getElementById('mybody').style.overflow = 'hidden';
        }
        function ShowScroll() {
            document.getElementById('mybody').style.overflow = 'visible';
        }
    
    </script>

</head>
<body id="mybody" runat="server" topmargin="0" marginheight="0">
    <form id="result" runat="server">

    <script src="../js/calendar.js" type="text/javascript"></script>

    <script src="../js/ValidateSearch.js" type="text/javascript"></script>

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <center>
        <table width="800" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td height="74" colspan="3" valign="top" background="../images/Header-bg.jpg">
                    <table width="800" height="74" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="325" rowspan="2" align="left" valign="middle" class="domain"><img src="../images/logo.jpg" width="306" height="72" /></td>
            <td width="475" align="right" class="domain">07876 747747 &nbsp;</td>
          </tr>
          
          <tr>
            <td valign="top" height="25"><table width="475" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="95" height="27" align="left" valign="middle" background="../images/button-bg.gif">
                                            <a href="../Default.aspx" class="GTButtonstxtcolor">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home</a>                                        </td>
                                        <td width="95" height="27" align="left" valign="middle" background="../images/button-bg.gif">
                                            <a href="AboutUs.aspx" class="GTButtonstxtcolor">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About
                                                Us </a>                                        </td>
                                  <td width="95" height="27" align="left" valign="middle" background="../images/button-bg.gif">
                                            <a href="../Default.aspx" class="GTButtonstxtcolor">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Flights</a>                                        </td>
                                        <td width="95" height="27" align="left" valign="middle" background="../images/button-bg.gif">
                                            <a href="../Default.aspx" class="GTButtonstxtcolor">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Holidays</a>                                        </td>
                                  <td width="95" height="27" align="left" valign="middle" background="../images/button-bg.gif">
                                            <a href="ContactUs.aspx" class="GTButtonstxtcolor">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact Us</a>                                        </td>
                  </tr>
                                </table></td>
          </tr>
      </table>                </td>
            </tr>
            <tr>
                <td align="right" colspan="3" valign="top" bgcolor="#FFFFFF">
                    <asp:ImageButton ID="SearchAgain" runat="server" OnClientClick="HideScroll()" Height="32px"
                        Width="145px" ImageUrl="../Images/search.gif"></asp:ImageButton>                </td>
            </tr>
            <tr>
                <td height="12" colspan="3" valign="top" bgcolor="#FFFFFF">                </td>
            </tr>
            <tr>
                <td valign="top" bgcolor="#FFFFFF">&nbsp;                </td>
                <td valign="top" bgcolor="#FFFFFF">&nbsp;                </td>
                <td valign="top" bgcolor="#FFFFFF">&nbsp;                </td>
            </tr>
            <tr>
                <td valign="top" bgcolor="#FFFFFF">&nbsp;                </td>
                <td valign="top" bgcolor="#FFFFFF">
                    <% Response.Write("<iframe id='_IFrame' name='_IFrame' src='" + hidUrl.Value + "' frameborder='0' width='796' height='600px'></iframe>"); %>
                    <asp:HiddenField ID="hidUrl" runat="server" />                </td>
                <td valign="top" bgcolor="#FFFFFF">&nbsp;                </td>
            </tr>
            <tr>
                <td width="7" valign="top" bgcolor="#FFFFFF">&nbsp;                </td>
                <td width="789" valign="top" bgcolor="#FFFFFF">&nbsp;                </td>
                <td width="4" valign="top" bgcolor="#FFFFFF">&nbsp;                </td>
            </tr>
            <tr>
              <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
              <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
              <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
            <tr>
                <td valign="top" bgcolor="#FFFFFF">&nbsp;                </td>
                <td valign="top" bgcolor="#FFFFFF">&nbsp;                </td>
                <td valign="top" bgcolor="#FFFFFF">&nbsp;                </td>
            </tr>
            <tr>
                <td colspan="3" valign="top" bgcolor="#fe272a" height="30">
                    <center><table width="800" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="15" height="30">&nbsp;</td>
            <td width="74" height="30" align="center" class="buttontest"><a class="buttontest" href="Default.aspx">Home</a></td>
            <td width="8" height="30"><img src="images/line.jpg" width="1" height="10" /></td>
            <td width="90" height="30" align="center" class="buttontest"><a class="buttontest" href="AboutUs.aspx">About Us</a> </td>
            <td width="5" height="30"><img src="images/line.jpg" width="1" height="10" /></td>
            <td width="97" height="30" align="center" class="buttontest"><a class="buttontest" href="Default.aspx">Privacy Policy</a> </td>
            <td width="7" height="30"><img src="images/line.jpg" width="1" height="10" /></td>
            <td width="114" height="30" align="center" class="buttontest"><a class="buttontest" href="Default.aspx">User Agreement</a> </td>
            <td width="6" height="30"><img src="images/line.jpg" width="1" height="10" /></td>
            <td width="92" height="30" align="center" class="buttontest"><a class="buttontest" href="ContactUs.aspx">Contact Us</a> </td>
            <td width="83" height="30">&nbsp;</td>
            <td width="209" class="buttomtest">EMAIL ID :- <a href="mailto:fares@travelairtime.co.uk" class="buttontest">fares@travelairtime.co.uk</a></td>
          </tr>
          <tr>
            <td height="8" colspan="12" class="buttomtest"></td>
          </tr>
          <tr>
            <td height="23">&nbsp;</td>
            <td height="23" colspan="11" class="buttomtest"><table width="780" height="27" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="285" class="buttomtest">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Monday :- Friday 10.00 - 5.00 pm  &nbsp;&nbsp;&nbsp;01600 888141</td>
                  <td width="261" class="buttomtest">Saturday :-             10.00 - 2.00 pm   &nbsp;&nbsp;&nbsp;01600888141</td>
                  <td width="85" bgcolor="#FE272A" class="buttomtest">&nbsp;</td>
                  <td width="81" bgcolor="#FE272A" class="buttomtest"><img src="../images/TATmastercard.gif" width="51" height="23" /></td>
                  <td width="68" bgcolor="#FE272A" class="buttomtest"><img src="../images/TATvisacard.jpg" width="51" height="23" /></td>
                </tr>
            </table></td>
          </tr>
        </table> </center>               </td>
            </tr>
        </table>
    </center>
    <asp:Panel ID="pnlModal" runat="server" Width="310" Height="360" CssClass="modal">
        <div class="rel">
            <div class="modal-inner-wrapper rounded-corners">
                <div class="content rounded-corners">
                    <div class="close">
                        <asp:LinkButton ID="btnClose" runat="server" OnClientClick="ClearSearch();ShowScroll();">close</asp:LinkButton>
                    </div>
                    <div class="body">
                        <p>
                      <table width="310" cellpadding="1" cellspacing="2" bgcolor="#E0E0E0">
                          <%--<tr>
                                                        <td height="23"  colspan="2" align="left" valign="top" class="BS-BookNow" 
                                                            bgcolor="White">
                                                            &nbsp;
                                                            </td>
                                                    </tr>--%>
              <tr>
                                    <td height="23" colspan="2" align="left" valign="top" class="BS-BookNow">
                                        Book Your Flight
                                    </td>
                        </tr>
                                <tr>
                                    <td align="left" class="flightfaretxt" width="76">
                                        Leaving from
                                    </td>
                                    <td width="222" align="left">
                                        <asp:DropDownList CssClass="Dropdownbox" Height="22" ID="ddlLeavingFrom" runat="server"
                                            Width="171">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ControlToValidate="ddlLeavingFrom" CssClass="flightfaretxt"
                                            ErrorMessage="Please select an origin airport" ID="RequiredFieldValidator1" runat="server"
                                            ValidationGroup="ValSumSearchGroup" InitialValue="">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="flightfaretxt">
                                        Going to
                                    </td>
                                    <td align="left">
                                        <asp:TextBox CssClass="AllTextBox" ID="txtDestination" runat="server" Width="163"
                                            Height="18"></asp:TextBox>
                                        <asp:AutoCompleteExtender runat="server" ID="autoComplete1" TargetControlID="txtDestination"
                                            ServicePath="~/AutoComplete.asmx" ServiceMethod="GetCompletionList" MinimumPrefixLength="3"
                                            CompletionInterval="5" EnableCaching="true" CompletionSetCount="10" CompletionListCssClass="autocomplete_completionListElement"
                                            CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                    </td>
                                    <td align="left" bgcolor="#E0E0E0" class="flightfaretxt" height="12">
                                        <input type="checkbox" id="chkDirect" runat="server" />&nbsp;Direct Flights Only
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                    </td>
                                    <td align="left" bgcolor="#E0E0E0" class="flightfaretxt" height="12">
                                        <asp:RequiredFieldValidator ControlToValidate="txtDestination" CssClass="flightfaretxt"
                                            ErrorMessage="Enter Destination City" ID="reqGoingToVal" runat="server" ValidationGroup="ValSumSearchGroup">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="flightfaretxt">
                                        Trip Type
                                    </td>
                                    <td align="left">
                                        <asp:RadioButtonList ID="rBtnListTripType" CssClass="flightfaretxt" runat="server"
                                            RepeatDirection="Horizontal" CellPadding="0" CellSpacing="0">
                                            <asp:ListItem Selected="True">Return</asp:ListItem>
                                            <asp:ListItem class="flightfaretxt">One Way</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="flightfaretxt">
                                        Depart Date
                                    </td>
                                    <td align="left">
                                        <asp:TextBox CssClass="Dropdownbox" ID="txtDepartDate" runat="server" Width="163"
                                            Height="18"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td id="RDate" align="left" class="flightfaretxt">
                                        <span id="RDate1">Return Date </span>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox CssClass="Dropdownbox" ID="txtReturnDate" runat="server" Width="163"
                                            Height="18"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="flightfaretxt">
                                        Airlines
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList CssClass="Dropdownbox" Height="22" ID="ddlAirlines" runat="server"
                                            Width="171">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="flightfaretxt">
                                        Class
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList CssClass="Dropdownbox" Height="22" ID="ddlClass" runat="server"
                                            Width="171">
                                            <asp:ListItem Value="Y" Selected="True">Economy</asp:ListItem>
                                            <asp:ListItem Value="W">Economy PLUS</asp:ListItem>
                                            <asp:ListItem Value="C">Business</asp:ListItem>
                                            <asp:ListItem Value="F">First</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="left" class="flightRoundTrip">
                                        <strong>Number of passengers </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="flightfaretxt">
                                        Adult (&gt; 12)
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList CssClass="Dropdownbox" Height="22" ID="ddlAdult" runat="server"
                                            Width="171">
                                            <asp:ListItem Value="1" Selected="True">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="4">4</asp:ListItem>
                                            <asp:ListItem Value="5">5</asp:ListItem>
                                            <asp:ListItem Value="6">6</asp:ListItem>
                                            <asp:ListItem Value="7">7</asp:ListItem>
                                            <asp:ListItem Value="8">8</asp:ListItem>
                                            <asp:ListItem Value="9">9</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="flightfaretxt">
                                        Child (2 -11)
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList CssClass="Dropdownbox" Height="22" ID="ddlChild" runat="server"
                                            Width="171">
                                            <asp:ListItem Value="0" Selected="True">0</asp:ListItem>
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="4">4</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="flightfaretxt">
                                        Infant (&lt; 2)
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList CssClass="Dropdownbox" Height="22" ID="ddlInfant" runat="server"
                                            Width="171">
                                            <asp:ListItem Value="0" Selected="True">0</asp:ListItem>
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="4">4</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                    </td>
                                    <td>
                                        <asp:HiddenField ID="HiddenField1" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                    </td>
                                    <td align="left">
                                        <asp:Button ID="btnSearch" runat="server" CssClass="Searchbuttoncommon" Text="Search"
                                            OnClick="btnSearch_Click" Height="25px" ValidationGroup="ValSumSearchGroup" />
                                        <br />
                                        <asp:ValidationSummary ID="ValSumSearch" CssClass="flightfaretxt" runat="server"
                                            ShowMessageBox="True" ShowSummary="False" ValidationGroup="ValSumSearchGroup" />
                                    </td>
                                </tr>
                      </table>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="modal-bg"
        TargetControlID="SearchAgain" PopupControlID="pnlModal" CancelControlID="btnClose">
    </asp:ModalPopupExtender>
    </form>
    
</body>
</html>
