<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddManager.aspx.cs" Inherits="AdminAddManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsVO8WE0nP0dD5aoHMqI0NmO84SXhu32s&libraries=places"></script>
        <script type="text/javascript">
<!--
    function GetLocation() {
        var geocoder = new google.maps.Geocoder();
        // var address = document.getElementById("txtAddress").value;
        var address = document.getElementById('<%=TextBox23.ClientID%>').value;
        geocoder.geocode({ 'address': address }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                var latitude = results[0].geometry.location.lat();
                var longitude = results[0].geometry.location.lng();
                
                document.getElementById('<%=TextBox25.ClientID%>').value = longitude;
                document.getElementById('<%=TextBox24.ClientID%>').value = latitude;
                // alert("Latitude: " + latitude + "\nLongitude: " + longitude);
            } else {
                alert("Request failed.")
            }
        });
    };
    //-->
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-12">


<h5>Admin Add Manager</h5>

<br />
<br />
	<div class="login-body">
				
       
          <asp:Label ID="Label20" runat="server" Text="Username:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox13" runat="server" Width="300px" Height="29px" ></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox13" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;<asp:Label ID="Label21" runat="server"></asp:Label>
        <br />
          <br />
        <asp:Label ID="Label22" runat="server" Text="Email ID:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox14" runat="server" Width="300px" Height="29px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox14" ForeColor="Red"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox14" ErrorMessage="Email Not Valid" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
           <br />
        <asp:Label ID="Label23" runat="server" Text="Password:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox15" runat="server" Width="300px" Height="29px" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox15" ForeColor="Red"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox15" ErrorMessage="Minimum 8 digit 1 caps, 1 small, 1 digit, 1 special" ForeColor="Red" 
                    ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"></asp:RegularExpressionValidator><br />
        <br />
         
         <asp:Label ID="Label25" runat="server" Text="Contact Number:"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox17" runat="server" Width="300px" Height="29px" 
                    MaxLength="12"></asp:TextBox>  <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="TextBox17" ErrorMessage="Phone Not in correct format" ForeColor="Red" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox17" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
          <br />
         <asp:Label ID="Label26" runat="server" Text="Country:"></asp:Label>
       &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList8" 
                 runat="server" Width="300px" Height="29px">    
             </asp:DropDownList>

              <br />
               <br />
        <asp:Label ID="Label27" runat="server" Text="AddressLine1:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox18" 
                 runat="server" Width="300px" Height="29px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox18" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
          <br />
         <asp:Label ID="Label28" runat="server" Text="AddressLine2:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox19" 
                 runat="server" Width="300px" Height="29px" ></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox19" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
          <br />
         
         <asp:Label ID="Label30" runat="server" Text="City:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox21" 
                 runat="server" Width="300px" Height="29px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox21" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
          <br />
         <asp:Label ID="Label34" runat="server" Text="Location:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox23" runat="server" Width="300px" Height="29px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox23" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" onclick="GetLocation()" height="45px" width="300px" backcolor="#182B3E"
          value="Get Location" class="primary-btn cta-btn" />
        <%--<asp:Button 
                 ID="Button5" runat="server" class="primary-btn cta-btn" Height="45px" 
              Text="Get Location" onclick="GetLocation()"  
        Width="300px" BackColor="#182B3E" BorderStyle="None" ForeColor="White"/>--%> 
          <br />
          <br />
         <asp:Label ID="Label37" runat="server" Text="Latitude:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="TextBox24" runat="server" Width="300px" Height="29px" ></asp:TextBox>
          <br />
          <br />
         <asp:Label ID="Label38" runat="server" Text="Longitude:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="TextBox25" runat="server" Width="300px" Height="29px" ></asp:TextBox>
          <br />
          <br />
         <asp:Label ID="Label39" runat="server" Text="Shop Name:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="TextBox26" runat="server" Width="300px" Height="29px" ></asp:TextBox>
          <br />
               <br />
              <asp:Label ID="Label35" runat="server" Text="Gender:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList10" 
                 runat="server" Width="300px" Height="29px" ></asp:DropDownList>
         <br />
          <br />
         <asp:Label ID="Label36" runat="server" Text="DOB:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:DropDownList ID="DropDownList11" 
                 runat="server" Width="86px" Height="29px" ></asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList12" 
                 runat="server" Width="86px" Height="29px"></asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList13" 
                 runat="server" Width="86px" Height="29px"></asp:DropDownList>
          <br />
         <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button3" runat="server" class="primary-btn cta-btn" Height="45px" 
              Text="Submit" onclick="Button1_Click"  
        Width="150px" BackColor="#182B3E" BorderStyle="None" ForeColor="White"/> &nbsp;&nbsp;<asp:Button ID="Button4" 
                 runat="server" Height="45px" Text="Cancel" class="primary-btn cta-btn"  
        Width="140px" onclick="Button2_Click" BackColor="#182B3E" BorderStyle="None" 
              ForeColor="White"/>
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
				
			</div>  

  
</div>

	
</asp:Content>

