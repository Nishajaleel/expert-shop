﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewUsers.aspx.cs" Inherits="AdminViewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-12">
                           
                                                 <div class="white_shd full margin_bottom_30">
                             <%-- <div class="full graph_head">--%>
                                 <div class="heading1 margin_0">
                                    <h5>Admin View Users</h5>
                                 </div>
                             <%-- </div>
                      --%>
                                 <div class="table_section padding_infor_info">
                                 <div class="table-responsive-sm">
         <asp:DataList ID="DataList1" runat="server" DataKeyField="userid" onselectedindexchanged="DataList1_SelectedIndexChanged" >
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
                        Email
                     </th>
                     <th>
                        Contact NO
                     </th>
                     <th>
                       Address
                     </th>
                     <th>
                      Gender
                     </th>
                     <th>
                      Date of Birth
                     </th>
                     
                  </tr>
                 
            </HeaderTemplate>
            <ItemTemplate>
           
               <tr >
               <td>
                 <%# Eval("userid")%>
               </td>
               <td>
                <%# Eval("username")%>
               </td>
               <td>
                <%# Eval("email")%>
               </td>
               <td>
                <%# Eval("contact")%>
               </td>
                <td>
                <%# Eval("address")%>
               </td>
               <td>
                <%# Eval("gender")%>
               </td>
                <td>
                <%# Eval("dob")%>
               </td>
               
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
                     
                                     
                                </div><!-- /.box-body -->
                               </div>
                                </div>   
                                </div>
</asp:Content>
