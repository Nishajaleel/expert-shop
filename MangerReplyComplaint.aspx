<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMasterPage.master" AutoEventWireup="true" CodeFile="MangerReplyComplaint.aspx.cs" Inherits="MangerReplyComplaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="Label1" runat="server"  Font-Bold="True" ForeColor="Black" Font-Size = "Large" 
            Text="Admin Reply Complaints"></asp:Label>
        <br />
         <br />
<asp:Label ID="Label2" runat="server" Font-Bold="True" 
            Text="Information: Status 0: Waiting for Approval !! Status 1:Delivered !! Status 2:Rejected "></asp:Label>
        <br />
         <br />
        <asp:DataGrid ID="dgpublic" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyField="compid" Width="830px" 
                                ForeColor="Black" 
        onselectedindexchanged="dgpublic_SelectedIndexChanged" GridLines="Horizontal" >
                    <Columns>
                        <asp:BoundColumn DataField="compid" HeaderText="Complaint ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="suname" HeaderText="UserName"></asp:BoundColumn>
                        <asp:BoundColumn DataField="sub" HeaderText="Subject"></asp:BoundColumn>
                        <asp:BoundColumn DataField="msg" HeaderText="Message"></asp:BoundColumn>
                         <asp:BoundColumn DataField="date1" HeaderText="Send Date"></asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Select" Text="Select"></asp:ButtonColumn>
                    </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" 
                        HorizontalAlign="Right" />
                            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" 
                        ForeColor="White" />
                </asp:DataGrid>
                 <br />
        <div style="Width:1300px;text-align:left">
         <asp:Label ID="Label9" runat="server" Text="Reply:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                 ID="TextBox6" runat="server" Width="475px" Height="108px" 
                TextMode="MultiLine" Enabled="False"></asp:TextBox>
         <br />
         <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button2" runat="server" Height="32px" Text="Submit"   
        Width="100px" class="primary-btn cta-btn"  BackColor="#182B3E" BorderStyle="None" 
              ForeColor="White" 
                 onclick="Button2_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
</asp:Content>

