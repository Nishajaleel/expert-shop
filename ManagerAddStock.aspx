<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMasterPage.master" AutoEventWireup="true" CodeFile="ManagerAddStock.aspx.cs" Inherits="ManagerAddStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-md-12">
<h5>Manger Update Stock Database </h5>

 <div class="form-w3agile form1">
            
        <br />
     
         <asp:Label ID="Label7" runat="server" Text="Product Code:"></asp:Label>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;<asp:TextBox ID="TextBox8" runat="server" 
                 Height= "30px" Width="500px" ></asp:TextBox>&nbsp;<asp:Button 
                 ID="Button3" runat="server" Height="32px" Text="Search"  class="primary-btn cta-btn"  BackColor="#182B3E" BorderStyle="None" 
              ForeColor="White"  
        Width="200px" onclick="Button3_Click"/> 
        <br />
        <br />
        &nbsp;<asp:Label ID="Label24" runat="server" Text="Stock ID:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label 
            ID="Label25" runat="server" Text="Stock Update:"></asp:Label><br />
        <asp:TextBox ID="TextBox17" runat="server" 
                 Height= "30px" Width="250px" ></asp:TextBox> 
        <asp:TextBox ID="TextBox18" runat="server" 
                 Height= "30px" Width="250px" ></asp:TextBox> <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox18" ForeColor="Red"></asp:RequiredFieldValidator>--%>
        <asp:Button 
                 ID="Button4" runat="server" Height="32px" Text="Update"  class="primary-btn cta-btn"  BackColor="#182B3E" BorderStyle="None" 
              ForeColor="White"  
        Width="200px" onclick="Button4_Click"/> <br /> 
        <br />
          <asp:Label ID="Label3" runat="server" Text="Top Category:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label9" runat="server" Text="SubCategory:"></asp:Label><br /> 
        
             <br />
        
        <asp:TextBox ID="TextBox19" runat="server" Width="350px" Height="30px" 
            Enabled="False"></asp:TextBox>
            
        <asp:TextBox ID="TextBox20" runat="server" Width="350px" Height="30px"></asp:TextBox>
            <br />  
         <br />
         <asp:Label ID="Label1" runat="server" Text="Product Name:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Model:"></asp:Label><br /> 
        
        <asp:TextBox ID="TextBox3" runat="server" Width="350px" Height="30px" 
            Enabled="False"></asp:TextBox>
            
        <asp:TextBox ID="TextBox6" runat="server" Width="350px" Height="30px" 
            Enabled="False" ></asp:TextBox>
             <br />
         <br />
          <asp:Label ID="Label23" runat="server" Text="Product Title:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:TextBox 
             ID="TextBox2" runat="server" Width="700px" Height="30px" Enabled="False" ></asp:TextBox>
             <br />
        <br />
          <asp:Label ID="Label14" runat="server" Text="Product Company:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="Warranty:"></asp:Label><br />
        <asp:TextBox ID="TextBox11" runat="server" Width="350px" Height="30px" 
            Enabled="False"></asp:TextBox>
                  
        
        <asp:TextBox 
             ID="TextBox1" runat="server" Width="350px" Height="30px" Enabled="False" ></asp:TextBox>
             <br />
        <br />
          <asp:Label ID="Label15" runat="server" Text="Color:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label20" runat="server" Text="Type:"></asp:Label> <br />
        <asp:TextBox ID="TextBox12" runat="server" Width="350px" Height="30px" 
            Enabled="False" ></asp:TextBox>
        
       
        <asp:TextBox ID="TextBox13" runat="server" Width="350px" Height="30px" 
            Enabled="False" ></asp:TextBox>
             <br />
         <br />
         <asp:Label ID="Label16" runat="server" Text="Price:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label17" runat="server" Text="Offer:"></asp:Label><br />
        <asp:TextBox ID="TextBox14" runat="server" Width="350px" Height="30px" 
            Enabled="False" ></asp:TextBox>
             
        <asp:TextBox 
             ID="TextBox15" runat="server" Width="350px" Height="30px" 
            Enabled="False" ></asp:TextBox>
             <br />
        <br />
        
         <asp:Label ID="Label5" runat="server" Text="Dimensions:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label6" runat="server" Text="Weight:"></asp:Label><br />
       
        <asp:TextBox 
             ID="TextBox4" runat="server" Width="350px" Height="30px" Enabled="False" ></asp:TextBox>
          
       
       
        <asp:TextBox 
             ID="TextBox5" runat="server" Width="350px" Height="30px" Enabled="False" ></asp:TextBox>
             <br />
        <br />
         <asp:Label ID="Label8" runat="server" Text="Form Factor:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:TextBox 
             ID="TextBox7" runat="server" Width="700px" Height="30px" Enabled="False" ></asp:TextBox>
             <br />
        <br />
           <asp:Label ID="Label12" runat="server" Text="Key Features :"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox9" 
                 runat="server" Width="700px" Height="100px" TextMode="MultiLine" 
            Enabled="False"></asp:TextBox>
             <br />
         <br />
          <asp:Label ID="Label10" runat="server" Text="Accessories:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:TextBox 
             ID="TextBox10" runat="server" Width="700px" Height="100px" 
            TextMode="MultiLine" Enabled="False" ></asp:TextBox>
             <br />
        <br />
         <asp:Label ID="Label13" runat="server" Text="Product Specifications:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:TextBox 
             ID="TextBox16" runat="server" Width="700px" Height="200px" 
            TextMode="MultiLine" Enabled="False" ></asp:TextBox>
             <br />
        <br />
            <div>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="White"
            BorderStyle="None" BorderWidth="0px" CellPadding="3" CellSpacing="2"
            Font-Names="Verdana" Font-Size="Small" GridLines="Both" 
            Width="1200px">
            <FooterStyle BackColor="White" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#7DA846" Font-Bold="True" Font-Size="Large" ForeColor="White"
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <HeaderTemplate>
            
                </HeaderTemplate>
            <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="0px" Width="200px"/>
            <ItemTemplate>
                <asp:Image ID="imgEmp" runat="server" Width="400px" Height="400px" ImageUrl='<%# Bind("mimage") %>' style="padding-left:40px"/>&nbsp;&nbsp;&nbsp; &nbsp;
                 <asp:Image ID="Image1" runat="server" Width="200px" Height="200px" ImageUrl='<%# Bind("simge1") %>' style="padding-left:40px"/>&nbsp;&nbsp;&nbsp; &nbsp;
                  <asp:Image ID="Image2" runat="server" Width="200px" Height="200px" ImageUrl='<%# Bind("simge2") %>' style="padding-left:40px"/>&nbsp;&nbsp;&nbsp; &nbsp;
                   <asp:Image ID="Image3" runat="server" Width="200px" Height="200px" ImageUrl='<%# Bind("simage3") %>' style="padding-left:40px"/><br />
                <br />
            </ItemTemplate>
        </asp:DataList>
       </div>
        <br />
        &nbsp;&nbsp;<br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
        </div>
          </div>

<br />
<br />
</asp:Content>

