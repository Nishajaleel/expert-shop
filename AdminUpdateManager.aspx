<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminUpdateManager.aspx.cs" Inherits="AdminUpdateManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-md-12">


<h5>Admin Update Manager</h5>

<br />
<br />
	<div class="login-body">
				
       
          <asp:Label ID="Label20" runat="server" Text="Username:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList8" 
                 runat="server" Width="300px" Height="29px" AutoPostBack="True" 
              onselectedindexchanged="DropDownList8_SelectedIndexChanged">    
             </asp:DropDownList>
        <br />
          <br />
        <asp:Label ID="Label22" runat="server" Text="Email ID:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox14" runat="server" Width="300px" Height="29px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        <br />
         
         <asp:Label ID="Label25" runat="server" Text="Contact Number:"></asp:Label>
        &nbsp;&nbsp;<asp:TextBox ID="TextBox17" runat="server" Width="300px" Height="29px" 
                    MaxLength="12"></asp:TextBox>  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox17" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
          <br />
         <asp:Label ID="Label26" runat="server" Text="Country:"></asp:Label>
       &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
              ID="TextBox26" runat="server" Width="300px" Height="29px" ></asp:TextBox><br />
               <br />
        <asp:Label ID="Label27" runat="server" Text="AddressLine1:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox18" 
                 runat="server" Width="300px" Height="29px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox18" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
          <br />
         <asp:Label ID="Label28" runat="server" Text="AddressLine2:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox19" 
                 runat="server" Width="300px" Height="29px" ></asp:TextBox>
        <br />
          <br />
         
         <asp:Label ID="Label30" runat="server" Text="City:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox21" 
                 runat="server" Width="300px" Height="29px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox21" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
          <br />
         <asp:Label ID="Label34" runat="server" Text="Location:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox23" runat="server" Width="300px" Height="29px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox23" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
               <br />
              <asp:Label ID="Label35" runat="server" Text="Gender:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <asp:TextBox ID="TextBox24" runat="server" Width="300px" Height="29px" ></asp:TextBox>
         <br />
          <br />
         <asp:Label ID="Label36" runat="server" Text="DOB:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:TextBox ID="TextBox25" runat="server" Width="300px" Height="29px" ></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
         <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button3" runat="server" class="primary-btn cta-btn" Height="45px" 
              Text="Update" onclick="Button1_Click"  
        Width="150px" BackColor="#182B3E" BorderStyle="None" ForeColor="White"/> &nbsp;&nbsp;<asp:Button ID="Button4" 
                 runat="server" Height="45px" Text="Delete" class="primary-btn cta-btn"  
        Width="140px" onclick="Button2_Click" BackColor="#182B3E" BorderStyle="None" 
              ForeColor="White"/>
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
				
			</div>  

  
</div>

</asp:Content>

