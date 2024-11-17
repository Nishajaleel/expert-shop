<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMasterPage.master" AutoEventWireup="true" CodeFile="ManagerApproveQuoatation.aspx.cs" Inherits="ManagerApproveQuoatation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <br />
                <br />
   <asp:Label ID="Label19" runat="server" Text="Order ID:"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList7" 
                 runat="server" Width="300px" Height="29px" 
                    onselectedindexchanged="DropDownList7_SelectedIndexChanged" 
        AutoPostBack="True">
               
             </asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
         <asp:Label ID="Label14" runat="server" Text="Insitution Username:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server" Width="300px" Height="29px"></asp:TextBox> &nbsp;&nbsp;&nbsp;<br />
          <br />
<div class="col-md-12">
                           
                                                 <div class="white_shd full margin_bottom_30">
                             <%-- <div class="full graph_head">--%>
                                 <div class="heading1 margin_0">
                                    <h5>Product List</h5>
                                 </div>
                             <%-- </div>
                      --%>
                                 <div class="table_section padding_infor_info">
                                 <div class="table-responsive-sm">
         <asp:DataList ID="DataList1" runat="server" DataKeyField="quid" onselectedindexchanged="DataList1_SelectedIndexChanged" >
            <HeaderTemplate>
               <table class="table">
                  <tr>
                     <th>
                      ID
                     </th>
                     <th>
                      Order ID
                     </th>
                     <th>
                        Product 
                     </th>
                     <th>
                        Company
                     </th>
                     
                     <th>
                        Unit Price
                     </th>
                     <th>
                      Quantity
                     </th>
                      <th>
                      Amount
                     </th>
                      <th>
                      Request Offer
                     </th>
                     <th>
                      Approve
                     </th>
                  </tr>
                 
            </HeaderTemplate>
            <ItemTemplate>
           
               <tr >
               <td>
                 <%# Eval("quid")%>
               </td>
               <td>
                <%# Eval("oid")%>
               </td>
               <td>
                <%# Eval("pname")%>
               </td>
               <td>
                <%# Eval("pcompany")%>
               </td>
                <td>
                <%# Eval("price")%>
               </td>
               <td>
                <%# Eval("nitems")%>
               </td>
                <td>
                <%# Eval("tamt")%>
               </td>
               <td>
                <%# Eval("offerrequired")%>
               </td>
               <td>
                <asp:Button class="fa fa-download" ID="btn1" Height="32px" Width="100px"  BackColor="#182B3E"  BorderColor="White" BorderStyle="None" ForeColor="White" runat="server" CommandName="Select"  Text="Update" /> 
                
               </td>
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
                     
                                     
                                </div><!-- /.box-body -->
                               </div>
                                </div>   
                                </div>
                                  <br />
                                    <br />
                                      <br />
                                 <asp:Label ID="Label20" runat="server" 
        Text="Final  Amount:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox13" runat="server" Width="200px" Height="29px" ></asp:TextBox> &nbsp;&nbsp;&nbsp;<br />
          <br />
          <asp:Button 
                 ID="Button3" runat="server" class="primary-btn cta-btn" Height="45px" 
              Text="Update Amount" onclick="Button1_Click"  
        Width="150px" BackColor="#182B3E" BorderStyle="None" ForeColor="White"/>

</asp:Content>

