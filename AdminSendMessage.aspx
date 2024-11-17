<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminSendMessage.aspx.cs" Inherits="AdminSendMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="Label2" runat="server"  Font-Bold="True" ForeColor="Black" Font-Size = "Large" 
            Text="Send Message"></asp:Label>
        <br />
         <br />
           <div style="Width:500px;text-align:left">
          <asp:Label ID="Label1" runat="server" Text="Comp ID:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" 
                   runat="server" Width="275px" Enabled="False"></asp:TextBox>
        <br />
        <br />
          <div style="Width:500px;text-align:left">
          <asp:Label ID="Label4" runat="server" Text="Sender:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="275px"></asp:TextBox>
        <br />
        <br />
         <div style="Width:500px;text-align:left">
          <asp:Label ID="Label3" runat="server" Text="Subject:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="275px"></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="Label6" runat="server" Text="Complaints:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="275px" 
                 Height="100px" TextMode="MultiLine"></asp:TextBox>
        <br />
         <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button1" runat="server" Height="32px" Text="Register" class="primary-btn cta-btn"  BackColor="#182B3E" BorderStyle="None" 
              ForeColor="White" Width="275px"  onclick="Button1_Click"/>
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
        </div>
        <div style="Width:800px;text-align:left">
         <asp:DataGrid ID="dgdpublic" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" CellPadding="4" 
                            DataKeyField="compid" ForeColor="Black" Width="830px" 
                GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px">
                            <Columns>
                                <asp:BoundColumn DataField="compid" HeaderText="ID"></asp:BoundColumn>
                                <asp:BoundColumn DataField="sub" HeaderText="Subject"></asp:BoundColumn>
                                <asp:BoundColumn DataField="msg" HeaderText="Mail"></asp:BoundColumn>
                                <asp:BoundColumn DataField="date1" HeaderText="Send Date"></asp:BoundColumn>
                                 <asp:BoundColumn DataField="reply" HeaderText="Reply"></asp:BoundColumn>
                                  <asp:BoundColumn DataField="date2" HeaderText="Reply Date"></asp:BoundColumn>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        </asp:DataGrid>

         </div>
  </div>
</asp:Content>

