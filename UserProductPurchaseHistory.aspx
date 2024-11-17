<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserProductPurchaseHistory.aspx.cs" Inherits="UserProductPurchaseHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
               
<div class="col-md-12">
                           
                                                 <div class="white_shd full margin_bottom_30">
                             <%-- <div class="full graph_head">--%>
                                 <div class="heading1 margin_0">
                                    <h3>Product Purchase History</h3>
                                 </div>
                             <%-- </div>
                      --%>
                       <br />
                                 <div class="table_section padding_infor_info">
                                 <div class="table-responsive-sm">
         <asp:DataList ID="DataList1" runat="server" DataKeyField="cartid" onselectedindexchanged="DataList1_SelectedIndexChanged" >
            <HeaderTemplate>
               <table class="table">
                  <tr>
                     <th>
                      ID
                     </th>
                     
                     <th>
                        Product 
                     </th>
                     
                     
                     <th>
                        Unit Price(Rs)
                     </th>
                     <th>
                      Quantity
                     </th>
                      <th>
                      Offer(%)
                     </th>
                     
                     <th>
                     Final Amount(Rs)
                     </th>
                  </tr>
                 
            </HeaderTemplate>
            <ItemTemplate>
           
               <tr >
               <td>
                 <%# Eval("cartid")%>
               </td>
               
               <td>
                <%# Eval("pname")%>
               </td>
               <td>
                <%# Eval("price")%>
               </td>
                <td>
                <%# Eval("quantity")%>
               </td>
               <td>
                <%# Eval("offer")%>
               </td>
                <td>
                <%# Eval("dprice")%>
               </td>
               
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
                     
                                     
                                </div><!-- /.box-body -->
                               </div>
                                </div>   
                                </div>
                                  &nbsp;&nbsp;<br />
          <br />
</asp:Content>

