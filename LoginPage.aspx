<%@ Page Title="" Language="C#" MasterPageFile="~/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="Width:500px;text-align:left;margin:auto;">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Label ID="Label1" runat="server" Text="Username" Font-Names="Times New Roman" 
            Font-Size="Large" Font-Bold="True" ></asp:Label>  
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="275px"></asp:TextBox>
    <br/>
   <div style="height:10px;">&nbsp;</div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
        ID="Label2" runat="server" Text="Password" Font-Names="Times New Roman" 
            Font-Size="Large" Font-Bold="True"></asp:Label>  <br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Height="30px" TextMode="Password" Width="275px"></asp:TextBox>
    <div style="height:1px;">&nbsp;</div>
     <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server"  class="primary-btn cta-btn" cta-btnHeight="40px" Text="Login"   
        Width="130px"  onclick="Button1_Click"/>  &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" class="primary-btn cta-btn" Height="40px" Text="Close"   
        Width="120px"  onclick="Button2_Click"/>
      <br />
      <div style="height:10px;">&nbsp;<asp:Label ID="Label3" runat="server" Text="Label" 
              Visible="False"></asp:Label>
    </div>
    <br />
    

    </div>
</asp:Content>

