<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="jobportalfyp.Login" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    	<!-- CSS here -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
		<link rel="stylesheet" href="assets/css/slicknav.css">
		<link rel="stylesheet" href="assets/css/price_rangs.css">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/magnific-popup.css">
		<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
		<link rel="stylesheet" href="assets/css/themify-icons.css">
		<link rel="stylesheet" href="assets/css/slick.css">
		<link rel="stylesheet" href="assets/css/nice-select.css">
		<link rel="stylesheet" href="assets/css/style.css">
		<link rel="stylesheet" href="assets/css/responsive.css">


</head>



<body>
    <form id="form1" runat="server">
        <div>

			
		
		<div class="container">
		
		<div class="row">
		  <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
			<div class="card card-signin my-5">
			  <div class="card-body">
				<h5 class="card-title text-center">Sign In</h5>
				  
					<br />
				  <div class="form-label-group">
					
					  <asp:TextBox ID="txtUsername" class="form-control" placeholder="Email address" type="email" runat="server"></asp:TextBox>
			   
				  </div>
				  
		
					<br />


				  <div class="form-label-group">
					
					  <asp:TextBox ID="txtPassword" class="form-control" placeholder="Password" type="password" runat="server"></asp:TextBox>
					   <asp:regularexpressionvalidator id="RegularExpressionValidator1" display="Dynamic" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." forecolor="Red" validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" controltovalidate="txtPassword" runat="server"></asp:regularexpressionvalidator>

				   
				  </div>

				  
					<br />

				  <div class="custom-control custom-checkbox mb-3">
					<input type="checkbox" class="custom-control-input" id="customCheck1">
					<label class="custom-control-label" for="customCheck1">Remember password</label>
				  </div>

				  <div>
					  
					  <asp:Button ID="login" runat="server" OnClick="login_Click" Text="Log In" class="btn btn-lg btn-facebook btn-block text-uppercase my-4" Font-Bold="true" ForeColor="White" Height="45" Width="425"/>

				  </div>

				  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringConnectionString %>" SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>
					
				  <hr class="my-4">
				 <div>
					  
					  <asp:Button ID="register" runat="server" Text="Register (New User)" OnClick="register_Click" class="btn btn-lg btn-facebook btn-block text-uppercase my-4" Font-Bold="true" ForeColor="White" Height="45" Width="425"/>

				  </div>
				

			  </div>
			</div>
		  </div>
		</div>
		</div>


        </div>
    </form>

				<!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
		<script src="./assets/js/slick.min.js"></script>
		<script src="./assets/js/price_rangs.js"></script>
		
		<!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
		<script src="./assets/js/animated.headline.js"></script>
		<script src="./assets/js/jquery.magnific-popup.js"></script>
		
		<!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
		<script src="./assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>


</body>
</html>
