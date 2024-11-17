<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserProductList.aspx.cs" Inherits="UserProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--	<div class="row">--%>
					<!-- Product main img -->
                   <%--<asp:DataList ID="DataList1" runat="server">  
            <ItemTemplate>  --%>
					<div class="col-md-5 col-md-push-2">
						<div id="product-main-img">
							<div class="product-preview">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("mimage") %>' alt=""/>
								
							</div>
                            <div class="product-preview">
                            <asp:Image ID="Image6" runat="server" ImageUrl='<%# Eval("simge1") %>' alt=""/>
								
							</div>
                             <div class="product-preview">
                            <asp:Image ID="Image7" runat="server" ImageUrl='<%# Eval("simge2") %>' alt=""/>
							
							</div>
                             <div class="product-preview">
                            <asp:Image ID="Image8" runat="server" ImageUrl='<%# Eval("simage3") %>' alt=""/>
								
							</div>
                            </div>
						
               
						
					</div>
					<!-- /Product main img -->

					<!-- Product thumb imgs -->
					<div class="col-md-2  col-md-pull-5">
						<div id="product-imgs">
							<div class="product-preview">
                             <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("mimage") %>' alt=""/>
								<%--<img src='<%# Eval("mimage") %>' alt="">--%>
							</div>

							<div class="product-preview">
                             <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("simge1") %>' alt=""/>
								<%--<img src='<%# Eval("simge1") %>' alt="">--%>
							</div>

							<div class="product-preview">
                             <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("simge2") %>' alt=""/>
								
							</div>

							<div class="product-preview">
                             <asp:Image ID="Image5" runat="server" ImageUrl='<%# Eval("simage3") %>' alt=""/>
							<%--	<img src='<%# Eval("simage3") %>' alt="">--%>
							</div>
						</div>
					</div>
					<!-- /Product thumb imgs -->
                   <%-- </ItemTemplate>  

                     </asp:DataList>--%>
					<!-- Product details -->
					<div class="col-md-5">
						<div class="product-details">
                         
							<h2 class="product-name"><asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>'></asp:Label></h2>
							<div>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<%--<i class="fa fa-star-o"></i>--%>
								</div>
								<%--<a class="review-link" href="#">10 Review(s) | Add your review</a>--%>
							</div>
							<div>
								<h3 class="product-price">Rs.<asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label></h3>
								<span class="product-available">In Stock</span>
							</div>
							<p><asp:Label ID="Label3" runat="server" Text='<%# Eval("ptitle") %>'></asp:Label></p>
							
                           
							<div class="product-options">
								<label>
									Type :
									
										<asp:Label ID="Label4" runat="server" Text='<%# Eval("type") %>'></asp:Label>
									
								</label>
								<label>
									Color :
									
										<asp:Label ID="Label5" runat="server" Text='<%# Eval("color") %>'></asp:Label>
									
								</label>
									<label>
								Shop :
								
									<asp:Label ID="Label8" runat="server" Text='<%# Eval("sname") %>'></asp:Label>
								
				</label>
							</div>

							<div class="add-to-cart">
								<div class="qty-label">
									Qty
									<div class="input-number">

										<asp:TextBox ID="TextBox13" runat="server" Width="30px" Height="29px" ></asp:TextBox>
									</div>
								</div>
                                <asp:Button ID="Button1" runat="server"  class="add-to-cart-btn" 
                                    Text="add to cart" onclick="Button1_Click" />
							<%--	<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
							</div>

							<%--<ul class="product-btns">
								<li><a href="#"><i class="fa fa-heart-o"></i> add to wishlist</a></li>
								<li><a href="#"><i class="fa fa-exchange"></i> add to compare</a></li>
							</ul>--%>

							<ul class="product-links">
								<li>Category:</li>
								<li><a href="#"><asp:Label ID="Label6" runat="server" Text='<%# Eval("topcat") %>'></asp:Label></a></li>
								<li> Warranty: <a href="#"><asp:Label ID="Label7" runat="server" Text=   '<%# Eval("warranty") %>'></asp:Label></a></li>
							</ul>

							<%--<ul class="product-links">
								<li>Share:</li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-envelope"></i></a></li>
							</ul>--%>

						</div>
					</div>
					<!-- /Product details -->
                    
					<!-- Product tab -->
					<div class="col-md-12">
						<div id="product-tab">
							<!-- product tab nav -->
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">Key Features</a></li>
								<li><a data-toggle="tab" href="#tab2">Accessories</a></li>
								<li><a data-toggle="tab" href="#tab3">Specifications</a></li>
							</ul>
							<!-- /product tab nav -->

							<!-- product tab content -->
							<div class="tab-content">
								<!-- tab1  -->
								<div id="tab1" class="tab-pane fade in active">
								
                                   <asp:ListBox ID="ListBox1" runat="server" Width="1000px" Height="250px" style="border: none;"></asp:ListBox>
          
								
								</div>
								<!-- /tab1  -->

								<!-- tab2  -->
								<div id="tab2" class="tab-pane fade in">
                                <asp:ListBox ID="ListBox2" runat="server" Width="1000px" Height="250px" style="border: none;"></asp:ListBox>
									<%--<div class="row">
										<div class="col-md-12">
											<p><%# Eval("accessories") %></p>
										</div>
									</div>--%>
								</div>
								<!-- /tab2  -->

								<!-- tab3  -->
								<div id="tab3" class="tab-pane fade in">
                                  <asp:ListBox ID="ListBox3" runat="server" Width="1000px" Height="250px" style="border: none;"></asp:ListBox>
									<%--<div class="row">
										<!-- Rating -->
										<div class="col-md-3">
											<div id="rating">
												<div class="rating-avg">
													<span>4.5</span>
													<div class="rating-stars">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<ul class="rating">
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 80%;"></div>
														</div>
														<span class="sum">3</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 60%;"></div>
														</div>
														<span class="sum">2</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
												</ul>
											</div>
										</div>
										<!-- /Rating -->

										<!-- Reviews -->
										<div class="col-md-6">
											<div id="reviews">
												<ul class="reviews">
													<li>
														<div class="review-heading">
															<h5 class="name">John</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">John</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">John</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
														</div>
													</li>
												</ul>
												<ul class="reviews-pagination">
													<li class="active">1</li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
												</ul>
											</div>
										</div>
										<!-- /Reviews -->

										<!-- Review Form -->
										<div class="col-md-3">
											<div id="review-form">
												<form class="review-form">
													<input class="input" type="text" placeholder="Your Name">
													<input class="input" type="email" placeholder="Your Email">
													<textarea class="input" placeholder="Your Review"></textarea>
													<div class="input-rating">
														<span>Your Rating: </span>
														<div class="stars">
															<input id="star5" name="rating" value="5" type="radio"><label for="star5"></label>
															<input id="star4" name="rating" value="4" type="radio"><label for="star4"></label>
															<input id="star3" name="rating" value="3" type="radio"><label for="star3"></label>
															<input id="star2" name="rating" value="2" type="radio"><label for="star2"></label>
															<input id="star1" name="rating" value="1" type="radio"><label for="star1"></label>
														</div>
													</div>
													<button class="primary-btn">Submit</button>
												</form>
											</div>
										</div>
										<!-- /Review Form -->
									</div>--%>
								</div>
								<!-- /tab3  -->
							</div>
							<!-- /product tab content  -->
						</div>
					</div>
					<!-- /product tab -->
<%--				</div>--%>

   
</asp:Content>

