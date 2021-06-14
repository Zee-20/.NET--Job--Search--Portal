<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registeration.aspx.cs" Inherits="jobportalfyp.Registeration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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



	
            <div class="section-top-border">
				<div class="row">
					<div class="col-lg-8 col-md-8">
						<h3 class="mb-30">New User Registeration Form</h3>

							<div class="mt-10">
								<asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
								<asp:TextBox ID="txtfname" Text="First Name" Width="400px" onblur="this.placeholder = 'First Name'" class="single-input" runat="server"></asp:TextBox>
							</div>

							<div class="mt-10">
								<asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
								<asp:TextBox ID="txtlname" Text="Last Name" Width="400px" onblur="this.placeholder = 'Last Name'" class="single-input" runat="server"></asp:TextBox>
							</div>

						
							<div class="input-group-icon mt-10">
								<div class="icon"><i class="" aria-hidden="true"></i></div>
								<div class="single-input">
        						<asp:DropDownList ID="rdbGender" Width="400px" runat="server" Height="19px">
									<asp:ListItem>Gender</asp:ListItem>
									<asp:ListItem>Male</asp:ListItem>
									<asp:ListItem>Female</asp:ListItem>
								</asp:DropDownList>
								</div>
								</div>
						<br />
						<br />
						<br />
					
						
						

						
							<div class="mt-10">
								<asp:Label ID="Label5" runat="server" Text="Email Address"></asp:Label>
								<asp:TextBox ID="txtEmail" Text="Email Address" TextMode="Email" Width="400px" onblur="this.placeholder = 'Email Address'" class="single-input" runat="server"></asp:TextBox>
							</div>

							<div class="mt-10">
								<asp:Label ID="Label1" runat="server" Text="Enter Password"></asp:Label>
								<asp:TextBox ID="txtPassword" Text="Password" TextMode="Password" Width="400px" onblur="this.placeholder = 'Password'" class="single-input" runat="server"></asp:textbox>
								 <asp:regularexpressionvalidator id="RegularExpressionValidator1" display="Dynamic" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." forecolor="Red" validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" controltovalidate="txtPassword" runat="server"></asp:regularexpressionvalidator>

								</div>
  
							<div class="mt-10">
								<asp:Label ID="Label2" runat="server" Text="Re-enter Password"></asp:Label>
								<asp:TextBox ID="txtRePass" Text="Confirm Password" TextMode="Password" Width="400px" onblur="this.placeholder = 'Confirm Password'" class="single-input" runat="server"></asp:TextBox>
								<asp:regularexpressionvalidator id="RegularExpressionValidator2" display="Dynamic" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." forecolor="Red" validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" controltovalidate="txtRePass" runat="server"></asp:regularexpressionvalidator>

							</div>

							<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
								<div class="single-input" id="default-select"">
        						<asp:DropDownList ID="ddlCountry" Width="400px" runat="server">
									<asp:ListItem>Country</asp:ListItem>
									<asp:ListItem>Malaysia</asp:ListItem>
									<asp:ListItem>Singapore</asp:ListItem>
									<asp:ListItem>Thailand</asp:ListItem>
									<asp:ListItem>Indonesia</asp:ListItem>
								</asp:DropDownList>
								</div>
								</div>

						<br />
						<br />
						<br />

							<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-globe" aria-hidden="true"></i></div>
								<div class="single-input" id="default-select"">
        						<asp:DropDownList ID="ddlCity" Width="400px" runat="server">
									<asp:ListItem>City</asp:ListItem>
									<asp:ListItem>Kuala Lumpur</asp:ListItem>
									<asp:ListItem>Singapore</asp:ListItem>
									<asp:ListItem>Bangkok</asp:ListItem>
									<asp:ListItem>Jakarta</asp:ListItem>
								</asp:DropDownList>
								</div>
							</div>

						<br />
						<br />
						<br />

						<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-globe" aria-hidden="true"></i></div>
								<div class="single-input" id="default-select"">
        						<asp:DropDownList ID="usertype" Width="400px" runat="server">
									<asp:ListItem>Usertype</asp:ListItem>
									<asp:ListItem>Applicant</asp:ListItem>
									<asp:ListItem>Employer</asp:ListItem>
									<asp:ListItem>Admin</asp:ListItem>
								</asp:DropDownList>
								</div>
							</div>


						<br />
						<br />
						<br />


							<div class="mt-10">
								<asp:Label ID="Label6" runat="server" Text="Message (if any)"></asp:Label>
								<asp:TextBox ID="ddlMessage" Text="Message" Width="400px" onblur="this.placeholder = 'Message'" class="single-input" runat="server" TextMode="MultiLine"></asp:TextBox>
							</div>
						<br />
						<br />
						<br />

							
							<div>
								<asp:Label ID="Label7" runat="server" Text="Upload document (format: .pdf,.png,.jpg,.docx,.txt)"></asp:Label>
								<asp:FileUpload ID="file_upload" Width="400px" runat="server" />
								<asp:RequiredFieldValidator runat="server" id="filecheck" controltovalidate="file_upload" errormessage="Please select a file!" />
    

							</div>

						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringConnectionString %>" SelectCommand="SELECT * FROM [register]"></asp:SqlDataSource>

						
							<div class="button-group-area mt-40">

							<asp:Button ID="register" OnClick="register_Click" runat="server" Width="500px" class="genric-btn primary circle" Font-Size="Large" Text="Submit Application" />

							</div>

						

							</div>
					
					</div>
				</div>
			
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
 
</asp:Content>
