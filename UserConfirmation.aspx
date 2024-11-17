<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserConfirmation.aspx.cs" Inherits="UserConfirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="Green" Font-Size = "Large" Text="Successfully Order the Product, Thank you for business with us"></asp:Label>
  <br />
         <br />
<asp:Button 
                 ID="Button1" runat="server" Height="40px" Width="300px" 
        Text="Go To Home Page" onclick="Button1_Click"  
        
        style="background-color: #f44336; color: white; padding: 10px 25px; text-align: center; text-decoration: none; display: inline-block;"/>
</asp:Content>

