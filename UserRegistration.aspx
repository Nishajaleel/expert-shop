<%@ Page Title="" Language="C#" MasterPageFile="~/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="Width:1300px;text-align:left; Height:1000px;padding-left: 50px;">
<h3 class="w3ls-title w3ls-title1">&nbsp;&nbsp;<span class="style1">Create your account</span>&nbsp;&nbsp; </h3>
			<!---728x90--->
			<div class="login-body">
				
       
          <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="300px" Height="29px" ontextchanged="TextBox1_TextChanged"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
        <br />
          <br />
          
          <asp:Label ID="Label20" runat="server" Text="Name:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox13" runat="server" Width="300px" Height="29px" ></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox13" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;<asp:Label ID="Label21" runat="server"></asp:Label>
        <br />
          <br />
        <asp:Label ID="Label4" runat="server" Text="Email ID:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="300px" Height="29px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Email Not Valid" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
           <br />
        <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Width="300px" Height="29px" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Minimum 8 digit 1 caps, 1 small, 1 digit, 1 special" ForeColor="Red" 
                    ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"></asp:RegularExpressionValidator><br />
      
         <br />
        <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
       <asp:TextBox ID="TextBox5" runat="server" Width="300px" Height="29px" TextMode="Password"></asp:TextBox> <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox3" ControlToValidate="TextBox5" ErrorMessage="Password Not Matching" 
                    ForeColor="Red" ></asp:CompareValidator><br />
        <br />
         
         <asp:Label ID="Label9" runat="server" Text="Contact Number:"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="300px" Height="29px" 
                    MaxLength="12"></asp:TextBox>  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Phone Not in correct format" ForeColor="Red" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
          <br />
         <asp:Label ID="Label8" runat="server" Text="Country:"></asp:Label>
       &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList6" 
                 runat="server" Width="300px" Height="29px">    
             </asp:DropDownList>

              <br />
               <br />
        <asp:Label ID="Label10" runat="server" Text="AddressLine1:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox7" 
                 runat="server" Width="300px" Height="29px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
          <br />
         <asp:Label ID="Label16" runat="server" Text="AddressLine2:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" 
                 runat="server" Width="300px" Height="29px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox10" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
          <br />
         <asp:Label ID="Label17" runat="server" Text="LandMark1:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox11" 
                 runat="server" Width="300px" Height="29px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox11" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
          <br />
         <asp:Label ID="Label18" runat="server" Text="City:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox12" 
                 runat="server" Width="300px" Height="29px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox12" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
          <br />
        <asp:Label ID="Label19" runat="server" Text="State:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList7" 
                 runat="server" Width="300px" Height="29px">
               
             </asp:DropDownList>
              <br />
                <br />
         <asp:Label ID="Label14" runat="server" Text="Pincode:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server" Width="300px" Height="29px" ontextchanged="TextBox1_TextChanged"></asp:TextBox> <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Pincode Not in correct format" ForeColor="Red" 
                    ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator> 
       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label15" runat="server"></asp:Label>
        <br />
          <br />
         <asp:Label ID="Label6" runat="server" Text="Location:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Width="300px" Height="29px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
               <br />
              <asp:Label ID="Label1" runat="server" Text="Gender:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList5" 
                 runat="server" Width="300px" Height="29px" ></asp:DropDownList>
         <br />
          <br />
         <asp:Label ID="Label2" runat="server" Text="DOB:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" 
                 runat="server" Width="86px" Height="29px" ></asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" 
                 runat="server" Width="100px" Height="29px"></asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" 
                 runat="server" Width="86px" Height="29px"></asp:DropDownList>
                <br />
         <br />
         <asp:Label ID="Label12" runat="server" Text="Security Question:"></asp:Label>
       &nbsp;<asp:DropDownList ID="DropDownList4" 
                 runat="server" Width="300px" Height="29px">
                 <%--<asp:ListItem>Select</asp:ListItem>
                 <asp:ListItem>100</asp:ListItem>
                 <asp:ListItem>200</asp:ListItem>
                 <asp:ListItem>300</asp:ListItem>
                 <asp:ListItem>400</asp:ListItem>
                 <asp:ListItem>500</asp:ListItem>--%>
             </asp:DropDownList>
        <br />
         <br />
          <asp:Label ID="Label13" runat="server" Text="Answer:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox9" runat="server" Width="300px" Height="29px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox9" ForeColor="Red"></asp:RequiredFieldValidator>
          <br />
         <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button1" runat="server" class="primary-btn cta-btn" Height="45px" Text="Submit" onclick="Button1_Click"  
        Width="150px"/> &nbsp;&nbsp;<asp:Button ID="Button2" 
                 runat="server" Height="45px" Text="Cancel" class="primary-btn cta-btn"  
        Width="150px" onclick="Button2_Click"/>
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
				
			</div>  
			<h6>Already have an account? <a href="LoginPage.aspx">Login Now »</a> </h6>  
		</div>
	
</asp:Content>

