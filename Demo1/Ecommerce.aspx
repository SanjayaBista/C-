<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ecommerce.aspx.cs" Inherits="Demo1.Ecommerce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <table style="width:auto">
               <tr>
                    <td class="auto-style1">Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox1"   runat="server" TextMode="MultiLine" Height="27px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>  
                </tr>
               <tr>
                    <td class="auto-style1">Price:</td>
                    <td>
                        <asp:TextBox ID="TextBox2"  runat="server"  Height="27px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>  
                </tr>
               <tr>
                    <td class="auto-style1">Quantity:</td>
                    <td>
                        <asp:TextBox ID="TextBox3"  runat="server"  Height="27px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>  
                </tr>
               <tr>
                    <td class="auto-style1">Status:</td>
                    <td>
                        <asp:TextBox ID="TextBox4"  runat="server"  Height="27px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>  
                </tr>
               <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Reset" />
                    </td>
                </tr>
           </table>
             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:GridView ID="GV1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateColumns="False">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="lblID" runat="server" Text='<%#Eval("productID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="lblName" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="lblPrice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:Label ID="lblQuantity" runat="server" Text='<%#Eval("quantity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
