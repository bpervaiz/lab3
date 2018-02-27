
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viewmore.aspx.cs" Inherits="WebApplication6.Viewmore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 1048px;
        }
        .style3
        {
            width: 129px;
        }
        .style4
        {
            width: 416px;
        }
        .style5
        {
            width: 470px;
        }
        .style6
        {
            height: 31px;
        }
        .style7
        {
            height: 30px;
            width: 285px;
        }
        .style8
        {
            width: 110px;
        }
    </style>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style2">
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        
                        <td>
                            <table align="center" class="style5" style="border: thin solid grey">
                                <tr>
                                    <td bgcolor="grey" class="style6" style="color: white">
                                        &nbsp;&nbsp;PRODUCT DETAIL</td>
                                </tr>
                                <tr>
                                    <td >
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td >
&nbsp;&nbsp; Product Name :
                                        <asp:Label ID="lblname" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td ">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td >
&nbsp;&nbsp; Product Price :
                                        <asp:Label ID="lblprice" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td >
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td >
&nbsp;&nbsp; Category :
                                        <asp:Label ID="lblcat" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td >
                                        &nbsp;</td>
                                </tr>
                               
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="style7">
                                            <tr>
                                                <td class="style8">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Button ID="Button1" runat="server" CssClass="btn" Font-Bold="True" 
                                                        Font-Size="14pt" Height="50px" Text="Order Now!" 
                                                         OnClick="Button1_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
