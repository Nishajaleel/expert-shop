<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserListProductBrand.aspx.cs" Inherits="UserListProductBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <!-- ASIDE -->
					<div id="aside" class="col-md-3">
						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Categories</h3>
							<div class="checkbox-filter">

								<div class="input-checkbox">
								<%--	<input type="checkbox" id="category-1">--%>
									<label for="category-1">
										<span></span>
                                        <a href='UserListProductCategory.aspx?name=cooling system'>Cooling System</a>
										<small>(<asp:Label ID="Label2" runat="server" Text="0"></asp:Label>)</small>
									</label>
								</div>

								<div class="input-checkbox">
									<%--<input type="checkbox" id="category-2">--%>
									<label for="category-2">
										<span></span>
                                         <a href='UserListProductCategory.aspx?name=Motherboard'>Motherboard</a>
										
										<small>(<asp:Label ID="Label3" runat="server" Text="0"></asp:Label>)</small>
									</label>
								</div>

								<div class="input-checkbox">
									<%--<input type="checkbox" id="category-3">--%>
									<label for="category-3">
										<span></span>
                                        <a href='UserListProductCategory.aspx?name=Memory'>Memory</a>
										
										<small>(<asp:Label ID="Label4" runat="server" Text="0"></asp:Label>)</small>
									</label>
								</div>

								<div class="input-checkbox">
									<%--<input type="checkbox" id="category-4">--%>
									<label for="category-4">
										<span></span>
                                        <a href='UserListProductCategory.aspx?name=Storage'>Storage</a>
										
										<small>(<asp:Label ID="Label5" runat="server" Text="0"></asp:Label>)</small>
									</label>
								</div>

								<div class="input-checkbox">
									<%--<input type="checkbox" id="category-5">--%>
									<label for="category-5">
										<span></span>
                                         <a href='UserListProductCategory.aspx?name=Laptops'>Laptops</a>
										Laptops
										<small>(<asp:Label ID="Label6" runat="server" Text="0"></asp:Label>)</small>
									</label>
								</div>

								<div class="input-checkbox">
									<%--<input type="checkbox" id="category-6">--%>
									<label for="category-6">
										<span></span>
                                          <a href='UserListProductCategory.aspx?name=Cabinet'>Cabinet</a>
										
										<small>(<asp:Label ID="Label7" runat="server" Text="0"></asp:Label>)</small>
									</label>
								</div>
                                <div class="input-checkbox">
									<%--<input type="checkbox" id="Checkbox7">--%>
									<label for="category-7">
										<span></span>
                                        <a href='UserListProductCategory.aspx?name=Monitor'>Monitor</a>
										Monitor
										<small>(<asp:Label ID="Label8" runat="server" Text="0"></asp:Label>)</small>
									</label>
								</div>
							</div>
						</div>
						<!-- /aside Widget -->

						

						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Brand</h3>
							<div class="checkbox-filter">
								<div class="input-checkbox">
								<%--	<input type="checkbox" id="brand-1">--%>
									<label for="brand-1">
										<span></span>
                                          <a href='UserListProductBrand.aspx?name=INTEL'>INTEL</a>
										
										<small>(<asp:Label ID="Label9" runat="server" Text="0"></asp:Label>)</small>
									</label>
								</div>
								<div class="input-checkbox">
									<%--<input type="checkbox" id="brand-2">--%>
									<label for="brand-2">
										<span></span>
                                         <a href='UserListProductBrand.aspx?name=AMD'>AMD</a>
										
										<small>(<asp:Label ID="Label10" runat="server" Text="0"></asp:Label>)</small>
									</label>
								</div>
								<div class="input-checkbox">
								
									<label for="brand-3">
										<span></span>
										 <a href='UserListProductBrand.aspx?name=HP'>HP</a>
										<small>(<asp:Label ID="Label11" runat="server" Text="0"></asp:Label>)</small>
									</label>
								</div>
								
								<div class="input-checkbox">
									<%--<input type="checkbox" id="brand-5">--%>
									<label for="brand-5">
										<span></span>
                                         <a href='UserListProductBrand.aspx?name=ASUS'>ASUS</a>
										
										<small>(<asp:Label ID="Label13" runat="server" Text="0"></asp:Label>)</small>
									</label>
								</div>
								
							</div>
						</div>
						<!-- /aside Widget -->

					
					</div>
					<!-- /ASIDE -->

                    <!-- STORE -->
					<div id="store" class="col-md-9">
						

						<!-- store products -->
						<div class="row">
							<!-- product -->
							<div class="col-md-4 col-xs-6">
                               <asp:DataList ID="DataList1" runat="server"  BorderWidth="0px" CellPadding="3" CellSpacing="2"
            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal"
            Width="500px">  
            <ItemTemplate>  
								<div class="product">
									<div class="product-img">
										<img src='<%# Eval("mimage") %>' alt="">
										<div class="product-label">
											<span class="sale"><%# Eval("offer") %>%</span>
											<span class="new"><%# Eval("type") %></span>
										</div>
									</div>
									<div class="product-body">
										<p class="product-category">Product</p>
										<h3 class="product-name"><a href="UserProductList.aspx?cart_id=<%# Eval("pcode") %>"><%# Eval("pname") %></a></h3>
										<h4 class="product-price">Rs.<%# Eval("price") %></h4>
										<p class="product-category">Shop: <%# Eval("sname") %> </p>
										<div class="product-rating">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<%--<i class="fa fa-star"></i>--%>
										</div>
										<%--<div class="product-btns">
											<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
											<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
											<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
										</div>--%>
									</div>
									<div class="add-to-cart">
										<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"><a href='UserProductList.aspx?cart_id=<%# Eval("pcode") %>'</a></i> add to cart</button>
									</div>
								</div>
                                </ItemTemplate>  
                               </asp:DataList>  
							</div>
							<!-- /product -->

							<div class="clearfix visible-sm visible-xs"></div>
								
						</div>
						<!-- /store products -->

						<!-- store bottom filter -->
						<div class="store-filter clearfix">
						<%--	<span class="store-qty">Showing 20-100 products</span>--%>
							<ul class="store-pagination">
                         
								<li class="active"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></li>
								<li><asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" >+</asp:LinkButton></li>
								<li><asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" >-</asp:LinkButton></li>
								
								<%--<li><a href="#"><i class="fa fa-angle-right"></i></a></li>--%>
							</ul>
						</div>
						<!-- /store bottom filter -->
					</div>
</asp:Content>

