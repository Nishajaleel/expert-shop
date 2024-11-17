<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserCheckOut.aspx.cs" Inherits="UserCheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
				<!-- row -->
				<div class="row">

					<div class="col-md-7" style="width: 500px;">
						<!-- Billing Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">Billing address</h3>
							</div>
							<div class="form-group">
                            <asp:TextBox ID="TextBox13" runat="server" class="input" placeholder="Username"></asp:TextBox> 
							<%--	<input class="input" type="text" name="first-name" Width="300px" placeholder="First Name">--%>
							</div>
							<div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" class="input" placeholder="Name"></asp:TextBox> 
								<%--<input class="input" type="text" name="last-name" placeholder="Last Name">--%>
							</div>
							<div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" class="input" placeholder="Email"></asp:TextBox> 
								<%--<input class="input" type="email" name="email" placeholder="Email">--%>
							</div>
							<div class="form-group">
                            <asp:TextBox ID="TextBox3" runat="server" class="input" placeholder="Address"></asp:TextBox> 
							<%--	<input class="input" type="text" name="address" placeholder="Address">--%>
							</div>
							<div class="form-group">
                            <asp:TextBox ID="TextBox4" runat="server" class="input" placeholder="City"></asp:TextBox> 
								<%--<input class="input" type="text" name="city" placeholder="City">--%>
							</div>
							<div class="form-group">
                            <asp:TextBox ID="TextBox5" runat="server" class="input" placeholder="Country"></asp:TextBox> 
								<%--<input class="input" type="text" name="country" placeholder="Country">--%>
							</div>
							<div class="form-group">
                            <asp:TextBox ID="TextBox6" runat="server" class="input" placeholder="ZIP Code"></asp:TextBox> 
								<%--<input class="input" type="text" name="zip-code" placeholder="ZIP Code">--%>
							</div>
							<div class="form-group">
                            <asp:TextBox ID="TextBox7" runat="server" class="input" placeholder="Telephone"></asp:TextBox> 
								<%--<input class="input" type="tel" name="tel" placeholder="Telephone">--%>
							</div>
							<%--<div class="form-group">
								<div class="input-checkbox">
									<input type="checkbox" id="create-account">
									<label for="create-account">
										<span></span>
										Create Account?
									</label>
									<div class="caption">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
										<input class="input" type="password" name="password" placeholder="Enter Your Password">
									</div>
								</div>
							</div>--%>
						</div>
						<!-- /Billing Details -->

						<!-- Shiping Details -->
						<div class="shiping-details">
							<div class="section-title">
								<h3 class="title">Shiping address</h3>
							</div>
							<div class="input-checkbox">
								<input type="checkbox" id="shiping-address">
								<label for="shiping-address">
									<span></span>
									Ship to a diffrent address?
								</label>
								<div class="caption">
									<div class="form-group">
                                     
										<input class="input" type="text" name="first-name" placeholder="First Name">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="last-name" placeholder="Last Name">
									</div>
									<div class="form-group">
										<input class="input" type="email" name="email" placeholder="Email">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="address" placeholder="Address">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="city" placeholder="City">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="country" placeholder="Country">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="zip-code" placeholder="ZIP Code">
									</div>
									<div class="form-group">
										<input class="input" type="tel" name="tel" placeholder="Telephone">
									</div>
								</div>
							</div>
						</div>
						<!-- /Shiping Details -->

						<!-- Order notes -->
						<div class="order-notes">
							<textarea class="input" placeholder="Order Notes"></textarea>
						</div>
						<!-- /Order notes -->
					</div>

					<!-- Order Details -->
					<div class="col-md-5 order-details" style="width: 700px;">
						<div class="section-title text-center">
							<h3 class="title">Your Order</h3>
						</div>
						<div class="order-summary">
                        
							<div class="order-col">
								<div style="width: 360px;"><strong>PRODUCT</strong></div>
                                <div style="width: 100px;"><strong>PRICE</strong></div>
								<div style="width: 70px;"><strong>OFFER</strong></div>
                                <div style="width: 100px;"><strong>AMOUNT</strong></div>
                                <div style="width: 70px;"><strong>REMOVE</strong></div>
							</div>
                             <asp:DataList ID="DataList1" runat="server" 
                                DataKeyField="cartid" onselectedindexchanged="DataList1_SelectedIndexChanged">  
                              <ItemTemplate> 
							<div class="order-products">
                             
								<div class="order-col">
									<div style="width: 360px;"><%# Eval("quantity") %>  x  <%# Eval("pname") %></div>
                                     <div style="width: 100px;">Rs. <%# Eval("price") %> </div>
                                      <div style="width: 70px;"><%# Eval("offer") %> %</div>
									<div style="width: 100px;">Rs. <%# Eval("dprice") %> </div>
                                     <div style="width: 70px;"> <asp:ImageButton ID="ButtonDelete" runat="server"  
            ImageUrl="~/img/remove.png" ToolTip="Delete" Width="30" Height="30" CommandName="Select"/></div>
								</div>
								<%--<div class="order-col">
									<div>2x Product Name Goes Here</div>
									<div>$980.00</div>
								</div>--%>
							</div>
                             </ItemTemplate>  
                               </asp:DataList> 
							<div class="order-col">
								<div>Shiping</div>
								<div><strong>FREE</strong></div>
							</div>
                             
							<div class="order-col">
								<div><strong>TOTAL</strong></div>
								<div><strong class="order-total">Rs. <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></strong></div>
							</div>
						</div>
						<div class="payment-method">
							<div class="input-radio">
								<input type="radio" name="payment" id="payment-1">
								<label for="payment-1">
									<span></span>
									Direct Bank Transfer
								</label>
								<<%--div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</div>--%>
							</div>
							<div class="input-radio">
								<input type="radio" name="payment" id="payment-2">
								<label for="payment-2">
									<span></span>
									Cheque Payment
								</label>
								<%--<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</div>--%>
							</div>
							<div class="input-radio">
								<input type="radio" name="payment" id="payment-3">
								<label for="payment-3">
									<span></span>
									Paypal System
								</label>
								<%--<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</div>--%>
							</div>
						</div>
						<div class="input-checkbox">
							<input type="checkbox" id="terms">
							<label for="terms">
								<span></span>
								I've read and accept the <a href="#">terms & conditions</a>
							</label>
						</div>
                       <asp:Button ID="Button1" runat="server" class="primary-btn order-submit" 
                            Text="Place order" onclick="Button1_Click" />
						<%--<a href="#" class="primary-btn order-submit">Place order</a>--%>
					</div>
					<!-- /Order Details -->
				</div>
</asp:Content>

