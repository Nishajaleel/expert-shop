<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMasterPage.master" AutoEventWireup="true" CodeFile="ManagerAddProduct.aspx.cs" Inherits="ManagerAddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-12">
<h5>Manger Add Product </h5>

 <div class="form-w3agile form1">
            
        <br />
     
         <asp:Label ID="Label7" runat="server" Text="Product Code:"></asp:Label>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;<asp:TextBox ID="TextBox8" runat="server" 
                 Height= "30px" Width="350px" Enabled="False"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator> &nbsp;&nbsp;&nbsp;<br /> 
        <br />
          <asp:Label ID="Label3" runat="server" Text="Top Category:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label9" runat="server" Text="SubCategory:"></asp:Label><br /> 
        
        <asp:DropDownList ID="DropDownList2" 
                 runat="server" Width="350px" Height="30px" AutoPostBack="True" 
                 onselectedindexchanged="DropDownList2_SelectedIndexChanged" ></asp:DropDownList> 
         
        <asp:DropDownList ID="DropDownList1" 
                 runat="server" Width="350px" Height="30px" AutoPostBack="True" 
                 onselectedindexchanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>
             <br />
         <br />
         <asp:Label ID="Label1" runat="server" Text="Product Name:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Model:"></asp:Label><br /> 
        
        <asp:TextBox ID="TextBox3" runat="server" Width="350px" Height="30px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
            
        <asp:TextBox ID="TextBox6" runat="server" Width="350px" Height="30px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
         <br />
          <asp:Label ID="Label23" runat="server" Text="Product Title:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:TextBox 
             ID="TextBox2" runat="server" Width="700px" Height="30px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
        <br />
          <asp:Label ID="Label14" runat="server" Text="Product Company:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="Warranty:"></asp:Label><br />
        <asp:TextBox ID="TextBox11" runat="server" Width="350px" Height="30px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox11" ForeColor="Red"></asp:RequiredFieldValidator>
                  
        
        <asp:TextBox 
             ID="TextBox1" runat="server" Width="350px" Height="30px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
        <br />
          <asp:Label ID="Label15" runat="server" Text="Color:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label20" runat="server" Text="Type:"></asp:Label> <br />
        <asp:TextBox ID="TextBox12" runat="server" Width="350px" Height="30px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox12" ForeColor="Red"></asp:RequiredFieldValidator>
        
       
        <asp:TextBox ID="TextBox13" runat="server" Width="350px" Height="30px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox13" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
         <br />
         <asp:Label ID="Label16" runat="server" Text="Price:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label17" runat="server" Text="Offer:"></asp:Label><br />
        <asp:TextBox ID="TextBox14" runat="server" Width="350px" Height="30px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox14" ForeColor="Red"></asp:RequiredFieldValidator>
             
        <asp:TextBox 
             ID="TextBox15" runat="server" Width="350px" Height="30px" >5</asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox15" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
        <br />
        
         <asp:Label ID="Label5" runat="server" Text="Dimensions:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label6" runat="server" Text="Weight:"></asp:Label><br />
       
        <asp:TextBox 
             ID="TextBox4" runat="server" Width="350px" Height="30px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
          
       
       
        <asp:TextBox 
             ID="TextBox5" runat="server" Width="350px" Height="30px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
        <br />
         <asp:Label ID="Label8" runat="server" Text="Form Factor:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:TextBox 
             ID="TextBox7" runat="server" Width="700px" Height="30px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
        <br />
           <asp:Label ID="Label12" runat="server" Text="Key Features :"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox9" 
                 runat="server" Width="700px" Height="100px" TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox9" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
         <br />
          <asp:Label ID="Label10" runat="server" Text="Accessories:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:TextBox 
             ID="TextBox10" runat="server" Width="700px" Height="100px" 
            TextMode="MultiLine" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox10" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
        <br />
         <asp:Label ID="Label13" runat="server" Text="Product Specifications:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:TextBox 
             ID="TextBox16" runat="server" Width="700px" Height="200px" 
            TextMode="MultiLine" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox16" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
        <br />
          <asp:Label ID="Label18" runat="server" Text="Main Image:"></asp:Label>            
             <div style="margin-top:-18px;margin-left:125px;"> 
                 <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" Height="30px" onload="FileUpload1_Load"/> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                 ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></div>
                  <asp:Label ID="Label19" runat="server" Text="Sub Design1:"></asp:Label>            
             <div style="margin-top:-18px;margin-left:125px;"> 
                 <asp:FileUpload ID="FileUpload2" runat="server" Width="300px" Height="30px" 
                     onload="FileUpload2_Load"/> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                 ControlToValidate="FileUpload2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></div>
          <asp:Label ID="Label21" runat="server" Text="Sub Design2:"></asp:Label>            
             <div style="margin-top:-18px;margin-left:125px;"> 
                 <asp:FileUpload ID="FileUpload3" runat="server" Width="300px" Height="30px" 
                     onload="FileUpload3_Load"/> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                 ControlToValidate="FileUpload3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></div>     
         <asp:Label ID="Label22" runat="server" Text="Sub Design3:"></asp:Label>             
             <div style="margin-top:-18px;margin-left:125px;"> 
                 <asp:FileUpload ID="FileUpload4" runat="server" Width="300px" Height="30px"
                     onload="FileUpload4_Load"/> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                 ControlToValidate="FileUpload4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></div>
         <br />
 
        <asp:Button 
                 ID="Button1" runat="server" Height="32px" Text="Submit"  class="primary-btn cta-btn" BackColor="#182B3E" BorderStyle="None" 
              ForeColor="White" onclick="Button1_Click" Width="110px"/> &nbsp;&nbsp;<asp:Button ID="Button2" 
                 runat="server" Height="32px" Text="Cancel"  class="primary-btn cta-btn"  BackColor="#182B3E" BorderStyle="None" 
              ForeColor="White" Width="112px" onclick="Button2_Click"/>
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
        </div>
          </div>

<br />
<br />

</asp:Content>

