<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="lab3sc.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cafe Shop</title>
  
</head>
<body>
    <form id="homepage1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="View Menu" OnClick="Button1_Click1" /><br /><br />
            <asp:ListBox ID="ListBox1" runat="server" Height="324px" Width="772px" ></asp:ListBox>
        </form>
   <%-- <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
                    RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <ItemTemplate>
                        <table class="style2">
                            <tr>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style4">
                                    <asp:Image ID="Image1" runat="server" Height="231px" 
                                        ImageUrl='C:/Users/Bisma/Desktop/FOODPROJECT/images/slide031' Width="300px" />
                                </td>
                                <td class="style6">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="color: #FFFF66" class="style10">
                                    &nbsp;</td>
                                <td class="style4" style="color: #FFFF66">
                                    <table class="style14">
                                        <tr>
                                            <td class="style16">
                                                Name :
                                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("pname") %>'></asp:Label>
                                            </td>
                                            <td rowspan="2" valign="middle"> 
                                                <table class="style15">
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="Button1" runat="server" CssClass="btn" Height="30px" 
                                                                Text="VIEW" Width="70px" CommandArgument='<%#Eval("pid") %>' />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style16">
                                                Price&nbsp; :
                                                <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="style6" style="color: #FFFF66">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>--%>

</body>
</html>
