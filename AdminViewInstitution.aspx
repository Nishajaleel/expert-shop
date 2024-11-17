<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewInstitution.aspx.cs" Inherits="AdminViewInstitution" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-md-12">
                           
                                                 <div class="white_shd full margin_bottom_30">
                             <%-- <div class="full graph_head">--%>
                                 <div class="heading1 margin_0">
                                    <h5>Admin Delete Institution</h5>
                                 </div>
                             <%-- </div>
                      --%>
                                 <div class="table_section padding_infor_info">
                                 <div class="table-responsive-sm">
         <asp:DataList ID="DataList1" runat="server" DataKeyField="inid" onselectedindexchanged="DataList1_SelectedIndexChanged" >
            <HeaderTemplate>
               <table class="table">
                  <tr>
                     <th>
                      ID
                     </th>
                     <th>
                       Username
                     </th>
                      <th>
                       Name
                     </th>
                     <th>
                        Email
                     </th>
                     <th>
                        Contact NO
                     </th>
                     <th>
                       Address
                     </th>
                     <th>
                      State
                     </th>
                     <th>
                     Starting Date
                     </th>
                    
                  </tr>
                 
            </HeaderTemplate>
            <ItemTemplate>
           
               <tr >
               <td>
                 <%# Eval("inid")%>
               </td>
               <td>
                <%# Eval("uname")%>
               </td>
               <td>
                <%# Eval("name")%>
               </td>
               <td>
                <%# Eval("email")%>
               </td>
               <td>
                <%# Eval("contact")%>
               </td>
                <td>
                <%# Eval("address1")%>
               </td>
               <td>
                <%# Eval("state")%>
               </td>
                <td>
                <%# Eval("startdate")%>
               </td>
               
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
                     
                                     
                                </div><!-- /.box-body -->
                               </div>
                                </div>   
                                </div>
</asp:Content>

