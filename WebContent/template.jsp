<%@ include file="jsp-top.jsp" %> 
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="html-head.jsp" %> 
	<title>CD Store</title>
</head>

<body>

<!-- Modal Login start -->
<div class="modal signUpContent fade" id="ModalLogin" tabindex="-1" role="dialog" >
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
        <h3 class="modal-title-site text-center" > Login  to TSHOP </h3>
      </div>
      <div class="modal-body">
        <div class="form-group login-username">
          <div >
            <input name="log" id="login-user" class="form-control input"  size="20" placeholder="Enter Username" type="text">
          </div>
        </div>
        <div class="form-group login-password">
          <div >
            <input name="Password" id="login-password" class="form-control input"  size="20" placeholder="Password" type="password">
          </div>
        </div>
        <div class="form-group">
          <div >
            <div class="checkbox login-remember">
              <label>
                <input name="rememberme"  value="forever" checked="checked" type="checkbox">
                Remember Me </label>
            </div>
          </div>
        </div>
        <div >
          <div >
            <input name="submit" class="btn  btn-block btn-lg btn-primary" value="LOGIN" type="submit">
          </div>
        </div>
        <!--userForm--> 
        
      </div>
      <div class="modal-footer">
        <p class="text-center"> Not here before? <a data-toggle="modal"  data-dismiss="modal" href="#ModalSignup"> Sign Up. </a> <br>
          <a href="forgot-password.html" > Lost your password? </a> </p>
      </div>
    </div>
    <!-- /.modal-content --> 
    
  </div>
  <!-- /.modal-dialog --> 
  
</div>
<!-- /.Modal Login --> 

<!-- Modal Signup start -->
<div class="modal signUpContent fade" id="ModalSignup" tabindex="-1" role="dialog" >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
        <h3 class="modal-title-site text-center" > REGISTER </h3>
      </div>
      <div class="modal-body">
        <div class="control-group"> <a class="fb_button btn  btn-block btn-lg " href="#"> SIGNUP WITH FACEBOOK </a> </div>
        <h5 style="padding:10px 0 10px 0;" class="text-center"> OR </h5>
        <div class="form-group reg-username">
          <div >
            <input name="login"  class="form-control input"  size="20" placeholder="Enter Username" type="text">
          </div>
        </div>
        <div class="form-group reg-email">
          <div >
            <input name="reg"  class="form-control input"  size="20" placeholder="Enter Email" type="text">
          </div>
        </div>
        <div class="form-group reg-password">
          <div >
            <input name="password"  class="form-control input"  size="20" placeholder="Password" type="password">
          </div>
        </div>
        <div class="form-group">
          <div >
            <div class="checkbox login-remember">
              <label>
                <input name="rememberme" id="rememberme" value="forever" checked="checked" type="checkbox">
                Remember Me </label>
            </div>
          </div>
        </div>
        <div >
          <div >
            <input name="submit" class="btn  btn-block btn-lg btn-primary" value="REGISTER" type="submit">
          </div>
        </div>
        <!--userForm--> 
        
      </div>
      <div class="modal-footer">
        <p class="text-center"> Already member? <a data-toggle="modal"  data-dismiss="modal" href="#ModalLogin"> Sign in </a> </p>
      </div>
    </div>
    <!-- /.modal-content --> 
    
  </div>
  <!-- /.modal-dialog --> 
  
</div>
<!-- /.ModalSignup End --> 

<!-- Fixed navbar start -->
<div class="navbar navbar-tshop navbar-fixed-top megamenu" role="navigation">
  <div class="navbar-top">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-sm-6 col-xs-6 col-md-6">
          <div class="pull-left ">
            <ul class="userMenu ">
            </ul>
          </div>
        </div>
        <div class="col-lg-6 col-sm-6 col-xs-6 col-md-6 no-margin no-padding">
          <div class="pull-right">
            <ul class="userMenu">
              <li> <a href="account-1.html"><span class="hidden-xs"> My Account</span> <i class="glyphicon glyphicon-user hide visible-xs "></i></a> </li>
              <li> <a href="#"  data-toggle="modal" data-target="#ModalLogin"> <span class="hidden-xs">Sign In</span> <i class="glyphicon glyphicon-log-in hide visible-xs "></i> </a> </li>
              <li class="hidden-xs"> <a href="#"  data-toggle="modal" data-target="#ModalSignup"> Create Account </a> </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--/.navbar-top-->
  
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only"> Toggle navigation </span> <span class="icon-bar"> </span> <span class="icon-bar"> </span> <span class="icon-bar"> </span> </button>
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-cart"> <i class="fa fa-shopping-cart colorWhite"> </i> <span class="cartRespons colorWhite"> Cart ($210.00) </span> </button>
      <a class="navbar-brand " href="index.html"> <img src="images/logo.png" alt="TSHOP"> </a> 
      
      <!-- this part for mobile -->
      <div class="search-box pull-right hidden-lg hidden-md hidden-sm">
        <div class="input-group">
          <button class="btn btn-nobg getFullSearch" type="button"> <i class="fa fa-search"> </i> </button>
        </div>
        <!-- /input-group --> 
        
      </div>
    </div>
    
    <!-- this part is duplicate from cartMenu  keep it for mobile -->
    <div class="navbar-cart  collapse">
      <div class="cartMenu  col-lg-4 col-xs-12 col-md-4 ">
        <div class="w100 miniCartTable scroll-pane">
          <table  >
            <tbody>
              <tr class="miniCartProduct">
                <td style="20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="images/product/3.jpg" alt="img"> </a> </div></td>
                <td style="40%"><div class="miniCartDescription">
                    <h4> <a href="product-details.html"> TSHOP T shirt Black </a> </h4>
                    <span class="size"> 12 x 1.5 L </span>
                    <div class="price"> <span> $8.80 </span> </div>
                  </div></td>
                <td  style="10%" class="miniCartQuantity"><a > X 1 </a></td>
                <td  style="15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                <td  style="5%" class="delete"><a > x </a></td>
              </tr>
              <tr class="miniCartProduct">
                <td style="20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="images/product/2.jpg" alt="img"> </a> </div></td>
                <td  style="40%"><div class="miniCartDescription">
                    <h4> <a href="product-details.html"> TSHOP T shirt Black </a> </h4>
                    <span class="size"> 12 x 1.5 L </span>
                    <div class="price"> <span> $8.80 </span> </div>
                  </div></td>
                <td   style="10%" class="miniCartQuantity"><a > X 1 </a></td>
                <td  style="15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                <td  style="5%" class="delete"><a > x </a></td>
              </tr>
              <tr class="miniCartProduct">
                <td style="20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="images/product/5.jpg" alt="img"> </a> </div></td>
                <td  style="40%"><div class="miniCartDescription">
                    <h4> <a href="product-details.html"> TSHOP T shirt Black </a> </h4>
                    <span class="size"> 12 x 1.5 L </span>
                    <div class="price"> <span> $8.80 </span> </div>
                  </div></td>
                <td   style="10%" class="miniCartQuantity"><a > X 1 </a></td>
                <td  style="15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                <td  style="5%" class="delete"><a > x </a></td>
              </tr>
              <tr class="miniCartProduct">
                <td style="20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="images/product/3.jpg" alt="img"> </a> </div></td>
                <td  style="40%"><div class="miniCartDescription">
                    <h4> <a href="product-details.html"> TSHOP T shirt Black </a> </h4>
                    <span class="size"> 12 x 1.5 L </span>
                    <div class="price"> <span> $8.80 </span> </div>
                  </div></td>
                <td   style="10%" class="miniCartQuantity"><a > X 1 </a></td>
                <td  style="15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                <td  style="5%" class="delete"><a > x </a></td>
              </tr>
              <tr class="miniCartProduct">
                <td style="20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="images/product/3.jpg" alt="img"> </a> </div></td>
                <td  style="40%"><div class="miniCartDescription">
                    <h4> <a href="product-details.html"> TSHOP T shirt Black </a> </h4>
                    <span class="size"> 12 x 1.5 L </span>
                    <div class="price"> <span> $8.80 </span> </div>
                  </div></td>
                <td   style="10%" class="miniCartQuantity"><a > X 1 </a></td>
                <td  style="15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                <td  style="5%" class="delete"><a > x </a></td>
              </tr>
              <tr class="miniCartProduct">
                <td style="20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="images/product/4.jpg" alt="img"> </a> </div></td>
                <td  style="40%"><div class="miniCartDescription">
                    <h4> <a href="product-details.html"> TSHOP T shirt Black </a> </h4>
                    <span class="size"> 12 x 1.5 L </span>
                    <div class="price"> <span> $8.80 </span> </div>
                  </div></td>
                <td   style="10%" class="miniCartQuantity"><a > X 1 </a></td>
                <td  style="15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                <td  style="5%" class="delete"><a > x </a></td>
              </tr>
            </tbody>
          </table>
        </div>
        <!--/.miniCartTable-->
        
        <div class="miniCartFooter  miniCartFooterInMobile text-right">
          <h3 class="text-right subtotal"> Subtotal: $210 </h3>
          <a class="btn btn-sm btn-danger"> <i class="fa fa-shopping-cart"> </i> VIEW CART </a> <a class="btn btn-sm btn-primary"> CHECKOUT </a> </div>
        <!--/.miniCartFooter--> 
        
      </div>
      <!--/.cartMenu--> 
    </div>
    <!--/.navbar-cart-->
    
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <!-- change width of megamenu = use class > megamenu-fullwidth, megamenu-60width, megamenu-40width -->
        <li class="dropdown megamenu-80width "> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> SHOP <b class="caret"> </b> </a>
          <ul class="dropdown-menu">
            <li class="megamenu-content"> 
              
              <!-- megamenu-content -->
              
              <ul id="categoryUl" class="col-lg-2  col-sm-2 col-md-2  unstyled">
                <li>
                  <p> <strong> Categories </strong> </p>
                </li>
              </ul>
            </li>
          </ul>
        </li>
        <li class="dropdown megamenu-fullwidth"> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> PAGES <b class="caret"> </b> </a>
          <ul class="dropdown-menu">
            <li class="megamenu-content"> 
              
              <!-- megamenu-content -->
              
              <h3 class="promo-1 no-margin hidden-xs"> 28+ HTML PAGES ONLY $8 || AVAILABLE ONLY AT WRAP BOOTSTRAP </h3>
              <h3 class="promo-1sub hidden-xs"> Complete Parallax E-Commerce Boostrap Template, Responsive on any Device, 10+ color Theme + Parallax Effect </h3>
              <ul class="col-lg-2  col-sm-2 col-md-2 unstyled">
                <li class="no-border">
                  <p> <strong> Home Pages </strong> </p>
                </li>
                <li> <a href="index.html"> Home Version 1 </a> </li>
                <li> <a href="index2.html"> Home Version 2 </a> </li>
                <li> <a href="index3.html"> Home Version 3 (BOXES) </a> </li>
                <li> <a href="index4.html"> Home Version 4 (LOOK 2)</a> </li>
                <li> <a href="index5.html"> Home Version 5 (LOOK 3)</a> </li>
                <li> <a href="index-header2.html"> Header Version 2 </a> </li>
                <li> <a href="index-header3.html"> Header Version 3 </a> </li>
                <li> <a href="index-static-search.html">Header Version 4<br>
                  ( Static Search Form)</a> </li>
              </ul>
              <ul class="col-lg-2  col-sm-2 col-md-2 unstyled">
                <li class="no-border">
                  <p> <strong> Featured Pages </strong> </p>
                </li>
                <li> <a href="category.html"> Category </a> </li>
                <li> <a href="sub-category.html"> Sub Category </a> </li>
                <li> <a href="category-list.html"> Category List View </a> </li>
                <li> <a href="product-details.html"> Product Details Version 1 </a> </li>
                <li> <a href="product-details-style2.html"> Product Details Version 2 </a> </li>
                <li> <a href="product-details-style3.html"> Product Details Version 3  (Custom Thumbnail Position)</a> </li>
              </ul>
              <ul class="col-lg-2  col-sm-2 col-md-2 unstyled">
                <li class="no-border">
                  <p> <strong> &nbsp; </strong> </p>
                </li>
                <li> <a href="cart.html"> Cart </a> </li>
                <li> <a href="about-us.html"> About us </a> </li>
                <li> <a href="about-us-2.html"> About us 2 (no parallax) </a> </li>
                <li> <a href="contact-us.html"> Contact us </a> </li>
                <li> <a href="contact-us-2.html"> Contact us 2 (No Fixed Map) </a> </li>
                <li> <a href="terms-conditions.html"> Terms &amp; Conditions </a> </li>
              </ul>
              <ul class="col-lg-2  col-sm-2 col-md-2 unstyled">
                <li class="no-border">
                  <p> <strong> Checkout </strong> </p>
                </li>
                <li> <a href="checkout-0.html"> Checkout Before </a> </li>
                <li> <a href="checkout-1.html"> checkout step 1 </a> </li>
                <li> <a href="checkout-2.html"> checkout step 2 </a> </li>
                <li> <a href="checkout-3.html"> checkout step 3 </a> </li>
                <li> <a href="checkout-4.html"> checkout step 4 </a> </li>
                <li> <a href="checkout-5.html"> checkout step 5 </a> </li>
              </ul>
              <ul class="col-lg-2  col-sm-2 col-md-2 unstyled">
                <li class="no-border">
                  <p> <strong> User Account </strong> </p>
                </li>
                <li> <a href="account-1.html"> Account Login </a> </li>
                <li> <a href="account.html"> My Account </a> </li>
                <li> <a href="my-address.html"> My Address </a> </li>
                <li> <a href="user-information.html"> User information </a> </li>
                <li> <a href="wishlist.html"> Wisth list </a> </li>
                <li> <a href="order-list.html"> Order list </a> </li>
                <li> <a href="forgot-password.html"> Forgot Password </a> </li>
              </ul>
              <ul class="col-lg-2  col-sm-2 col-md-2 unstyled">
                <li class="no-border">
                  <p> <strong> &nbsp; </strong> </p>
                </li>
                <li> <a href="error-page.html"> Error Page </a> </li>
                <li> <a href="blank-page.html"> Blank Page </a> </li>
                <li> <a href="form.html"> Basic Form Element </a> </li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
      
      <!--- this part will be hidden for mobile version -->
      <div class="nav navbar-nav navbar-right hidden-xs">
        <div class="dropdown  cartMenu "> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-shopping-cart"> </i> <span class="cartRespons"> Cart ($210.00) </span> <b class="caret"> </b> </a>
          <div class="dropdown-menu col-lg-4 col-xs-12 col-md-4 ">
            <div class="w100 miniCartTable scroll-pane">
              <table>
                <tbody>
                  <tr class="miniCartProduct">
                    <td style="width:20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="images/product/3.jpg" alt="img"> </a> </div></td>
                    <td style="width:40%"><div class="miniCartDescription">
                        <h4> <a href="product-details.html"> TSHOP Tshirt DO9 </a> </h4>
                        <span class="size"> 12 x 1.5 L </span>
                        <div class="price"> <span> $22 </span> </div>
                      </div></td>
                    <td  style="width:10%" class="miniCartQuantity"><a > X 1 </a></td>
                    <td  style="width:15%" class="miniCartSubtotal"><span> $33 </span></td>
                    <td  style="width:5%" class="delete"><a > x </a></td>
                  </tr>
                  <tr class="miniCartProduct">
                    <td style="width:20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="images/product/2.jpg" alt="img"> </a> </div></td>
                    <td  style="width:40%"><div class="miniCartDescription">
                        <h4> <a href="product-details.html"> TShir TSHOP 09 </a> </h4>
                        <span class="size"> 12 x 1.5 L </span>
                        <div class="price"> <span> $15 </span> </div>
                      </div></td>
                    <td   style="width:10%" class="miniCartQuantity"><a > X 1 </a></td>
                    <td  style="width:15%" class="miniCartSubtotal"><span> $120 </span></td>
                    <td  style="width:5%" class="delete"><a > x </a></td>
                  </tr>
                  <tr class="miniCartProduct">
                    <td style="width:20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="images/product/5.jpg" alt="img"> </a> </div></td>
                    <td  style="width:40%"><div class="miniCartDescription">
                        <h4> <a href="product-details.html"> Tshir 2014 </a> </h4>
                        <span class="size"> 12 x 1.5 L </span>
                        <div class="price"> <span> $30 </span> </div>
                      </div></td>
                    <td   style="width:10%" class="miniCartQuantity"><a > X 1 </a></td>
                    <td  style="width:15%" class="miniCartSubtotal"><span> $80 </span></td>
                    <td  style="width:5%" class="delete"><a > x </a></td>
                  </tr>
                  <tr class="miniCartProduct">
                    <td style="width:20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="images/product/3.jpg" alt="img"> </a> </div></td>
                    <td  style="width:40%"><div class="miniCartDescription">
                        <h4> <a href="product-details.html"> TSHOP T shirt DO20 </a> </h4>
                        <span class="size"> 12 x 1.5 L </span>
                        <div class="price"> <span> $15 </span> </div>
                      </div></td>
                    <td   style="width:10%" class="miniCartQuantity"><a > X 1 </a></td>
                    <td  style="width:15%" class="miniCartSubtotal"><span> $55 </span></td>
                    <td  style="width:5%" class="delete"><a > x </a></td>
                  </tr>
                  <tr class="miniCartProduct">
                    <td style="width:20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="images/product/4.jpg" alt="img"> </a> </div></td>
                    <td  style="width:40%"><div class="miniCartDescription">
                        <h4> <a href="product-details.html"> T shirt Black </a> </h4>
                        <span class="size"> 12 x 1.5 L </span>
                        <div class="price"> <span> $44 </span> </div>
                      </div></td>
                    <td   style="width:10%" class="miniCartQuantity"><a > X 1 </a></td>
                    <td  style="width:15%" class="miniCartSubtotal"><span> $40 </span></td>
                    <td  style="width:5%" class="delete"><a > x </a></td>
                  </tr>
                  <tr class="miniCartProduct">
                    <td style="width:20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="images/site/winter.jpg" alt="img"> </a> </div></td>
                    <td  style="width:40%"><div class="miniCartDescription">
                        <h4> <a href="product-details.html"> G Star T shirt </a> </h4>
                        <span class="size"> 12 x 1.5 L </span>
                        <div class="price"> <span> $80 </span> </div>
                      </div></td>
                    <td   style="width:10%" class="miniCartQuantity"><a > X 1 </a></td>
                    <td  style="width:15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                    <td  style="width:5%" class="delete"><a > x </a></td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!--/.miniCartTable-->
            
            <div class="miniCartFooter text-right">
              <h3 class="text-right subtotal"> Subtotal: $210 </h3>
              <a class="btn btn-sm btn-danger"> <i class="fa fa-shopping-cart"> </i> VIEW CART </a> <a class="btn btn-sm btn-primary"> CHECKOUT </a> </div>
            <!--/.miniCartFooter--> 
            
          </div>
          <!--/.dropdown-menu--> 
        </div>
        <!--/.cartMenu-->
        
        <div class="search-box">
          <div class="input-group">
            <button class="btn btn-nobg getFullSearch" type="button"> <i class="fa fa-search"> </i> </button>
          </div>
          <!-- /input-group --> 
          
        </div>
        <!--/.search-box --> 
      </div>
      <!--/.navbar-nav hidden-xs--> 
    </div>
    <!--/.nav-collapse --> 
    
  </div>
  <!--/.container -->
  
  <div class="search-full text-right"> <a class="pull-right search-close"> <i class=" fa fa-times-circle"> </i> </a>
    <div class="searchInputBox pull-right">
      <input type="search"  data-searchurl="search?=" name="q" placeholder="start typing and hit enter to search" class="search-input">
      <button class="btn-nobg search-btn" type="submit"> <i class="fa fa-search"> </i> </button>
    </div>
  </div>
  <!--/.search-full--> 
  
</div>
<!-- /.Fixed navbar  -->

<div class="container main-container headerOffset globalPaddingBottom"> 
	Hello
</div>
<%@ include file="html-footer.jsp" %> 
</body>
</html>
