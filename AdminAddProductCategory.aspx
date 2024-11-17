<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddProductCategory.aspx.cs" Inherits="AdminAddProductCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-12">
<h5>Admin Add Product Category</h5>

<br />
<br />

 <asp:Label ID="Label3" runat="server" Text="Category Code:"></asp:Label>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" 
                 Width="225px" Enabled="False"></asp:TextBox> &nbsp;&nbsp;&nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
        <br /> 
        <br />
        <asp:Label ID="Label9" runat="server" Text="Category Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="225px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
         <br />
         
       <asp:Label ID="Label4" runat="server" Text="Top Category:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
            ID="TextBox3" runat="server" 
                 Width="225px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         <br />
         
         <asp:Label ID="Label5" runat="server" Text="Sub Category:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
            ID="TextBox5" runat="server" 
                 Width="225px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         <br />
        
        <asp:Label ID="Label10" runat="server" Text="Category Description :"></asp:Label>
        <br />
         <%--<br   <asp:Label ID="Label6" runat="server" Text="Category Features :"></asp:Label>--%>
           <asp:TextBox ID="TextBox4" 
                 runat="server" Width="375px" Height="100px" TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         <br />

 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button1" runat="server" Height="45px" Text="Submit" BackColor="#182B3E" ForeColor="White" class="primary-btn cta-btn" onclick="Button1_Click"  
        Width="110px"/> &nbsp;&nbsp;<asp:Button ID="Button2" 
                 runat="server" Height="45px" Text="Cancel"  BackColor="#182B3E" 
            ForeColor="White" class="primary-btn cta-btn"  
        Width="110px" onclick="Button2_Click"/>
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
</div>
</asp:Content>

