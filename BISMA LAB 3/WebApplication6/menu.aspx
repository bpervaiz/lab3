<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="WebApplication6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 388px;
            height: 255px;
        }
        .style4
        {
            width: 304px;
        }
        .style6
        {
            width: 36px;
        }
        .style10
        {
            width: 70px;
        }
        .style14
        {
            width: 291px;
            height: 55px;
        }
        .style15
        {
            width: 75px;
        }
        .style16
        {
            width: 210px;
        }
    </style>

</head>


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
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
                    RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <ItemTemplate>
                        <table class="style2">
                           
                            <tr>
                                <td style="color: #FFFF66" class="style10">
                                    &nbsp;</td>
                                <td class="style4" >
                                    <table class="style14">
                                        <tr>
                                            <td class="style16">
                                                Name :
                                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("Nam") %>'></asp:Label>
                                            </td>
                                            <td rowspan="2"> 
                                                <table class="style15">
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="Button1" runat="server" CssClass="btn" Height="30px" 
                                                                Text="View" Width="70px" CommandArgument='<%#Eval("ID") %>' OnCommand="CommandBtn_Click"/>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style16">
                                                Price&nbsp; :&nbsp;Rs.
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
                    <HeaderTemplate>
                <asp:Label id="lblHeader" runat="server" Font-Names="Tahoma" ><h1>Cafe's Menu</h1></asp:Label>
                        <asp:Button ID="cart" runat="server" CssClass="btn" Height="30px" Text="My Cart" Width="70px" PostBackUrl="~/MyCart.aspx"/>
                     </HeaderTemplate>
   
            <FooterTemplate>
                <hr />
            </FooterTemplate>
   
            <SeparatorTemplate>
                <hr />
            </SeparatorTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<%--        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:labbConnectionString %>" ProviderName="<%$ ConnectionStrings:labbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
    <asp:DataList id="DataList1" runat="server">
            <ItemTemplate>
                <table class="style2">
                           
                            <tr>
                                <td style="color: #FFFF66" class="style10">
                                    &nbsp;</td>
                                <td class="style4" style="color: #FFFF66">
                                    <table class="style14">
                                        <tr>
                                            <td class="style16">
                                                Name :
                                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("username") %>'></asp:Label>
                                            </td>
                                            <td rowspan="2" valign="middle"> 
                                               
                                            </td>
                                        </tr>
                                       
                                    </table>
                                </td>
                                <td class="style6" style="color: #FFFF66">
                                    &nbsp;</td>
                            </tr>
                        </table>
                <b>ID:</b> 
                <asp:Label id="lblBrandName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ID") %>'></asp:Label><br />
                   
                <b>Name:</b> 
                <asp:Label id="lblCategoryName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "username") %>'></asp:Label><br />
   
            </ItemTemplate>
               
            <HeaderTemplate>
                <asp:Label id="lblHeader" runat="server" Font-Names="Tahoma" ><h1>Cafe's Menu</h1></asp:Label>
                <hr />
            </HeaderTemplate>
   
            <FooterTemplate>
                <hr />
            </FooterTemplate>
   
            <SeparatorTemplate>
                <hr />
            </SeparatorTemplate>
   
        </asp:DataList>--%>
    </div>
    </form>
</body>
</html>
