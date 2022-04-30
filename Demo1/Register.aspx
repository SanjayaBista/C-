<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Demo1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/register.css" type="text/css" media="screen" />  
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1"  runat="server" TextMode="MultiLine" Height="27px"></asp:TextBox></td>  
                </tr>
                <tr>
                    <td class="auto-style1" >Address</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>  
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" text="Female" GroupName="gender" />
                        <asp:RadioButton ID="RadioButton2" runat="server" text="Male" GroupName="gender" />
                    </td>
                </tr>
                 <tr>
                    <td>Country</td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="Nepal"></asp:ListItem>
                        <asp:ListItem Value="India"></asp:ListItem>
                        <asp:ListItem Value="China"></asp:ListItem>
                        </asp:DropDownList></td>  
                </tr>
                <tr>
                    <td>Hobbies </td>
                        <td>
                         <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Swimming" />
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Reading" />
                        <asp:CheckBox ID="CheckBox3" runat="server" Text="Watching" />
                        </td>
                        
                   
                </tr>
                 <tr>
                    <td>Username</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>  
                </tr>
                 <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="TextBox5" type="password" runat="server"></asp:TextBox></td>  
                </tr>
                 <tr>
                    <td>Confirm Password</td>
                    <td>
                        <asp:TextBox ID="TextBox6" type="password" runat="server"></asp:TextBox></td>  
                </tr>
               <tr>
                    <td>
                    <asp:Button ID="Button1" runat="server" Text="Sign Up" ForeColor="Black" OnClick="Button1_Click"  />
                    <asp:Button ID="Button2" runat="server" Text="Reset" ForeColor="Black"  />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
