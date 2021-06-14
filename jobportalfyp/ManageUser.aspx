<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="jobportalfyp.ManageUser" %>
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




    
	<h1 style="text-align: center; color: #CC3300;">Manage New Users</h1>
    <br />
    <br />
    <table style="width: 100%; height: 500px">
        <tr>
            <td style="width: 274px"><strong>ID: </strong></td>
            <td>
                
                <asp:TextBox ID="idtxt" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Button ID="btnSearchId" runat="server" OnClick="btnSearchId_Click" class="genric-btn primary circle" Font-Size="Small" style="font-weight: bold" Text="Search User" />
                </strong>
                
            </td>
        </tr>
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                </strong></td>
            <td>
                <br />
                <asp:TextBox ID="txtFirst" class="single-input" runat="server"></asp:TextBox>
                <br />
						
            </td>
        </tr>
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txtLast" class="single-input" runat="server"></asp:TextBox>
                <br />
            </td>       					
        </tr>
      
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="gender" runat="server" Text="Gender:"></asp:Label>
                </strong></td>
            <td>
				<asp:DropDownList ID="GenderList" runat="server">
					<asp:ListItem>Male</asp:ListItem>
					<asp:ListItem>Female</asp:ListItem>
				</asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
                </strong></td>
            <td>
                <br />
				<asp:TextBox ID="txtEmail" class="single-input" runat="server"></asp:TextBox>
                <br />
            </td>


        </tr>
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="pass" runat="server" Text="Password:"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txtpass" class="single-input" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="con_pass" runat="server" Text="Confirm Password:"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txtconpass" class="single-input" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="country" runat="server" Text="Country:"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txtcountry" class="single-input" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="city" runat="server" Text="City:"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txtcity" class="single-input" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="file" runat="server" Text="File Upload:"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txtfile" class="single-input" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 274px"><strong>
                <asp:Label ID="user" runat="server" Text="User Type:"></asp:Label>
                </strong></td>
            <td>
				<asp:DropDownList ID="UserList" runat="server">
					<asp:ListItem>Admin</asp:ListItem>
					<asp:ListItem>Applicant</asp:ListItem>
                    <asp:ListItem>Employer</asp:ListItem>
				</asp:DropDownList>              
            </td>
        </tr>
        <tr>
            <td style="width: 274px">&nbsp;</td>
            <td>
                <br />
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" class="genric-btn primary circle" Font-Size="Small" Text="Add Record" />
                <br />
                <br />
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" class="genric-btn primary circle" Font-Size="Small" Text="Update User" />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 274px">&nbsp;</td>
            <td>
                <br />
                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" class="genric-btn primary circle" Font-Size="Small" Text="Reset Fields" />
                <br />
                <br />
                <asp:Button ID="btnDelete" runat="server" class="genric-btn primary circle" Font-Size="Small" Text="Delete User" />
                <br />
            </td>
        </tr>
        <tr>
            
            <td style="width: 274px">
               
				<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringConnectionString %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT * FROM [register]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <h2>View User Detalis</h2>
    <br />
    <table class="w-100" border="1" style="background-color: #FFFFCC">
        <tr style="font-weight: bold;" >
            <td style="width: 195px">ID</td>
            <td style="width: 195px">First Name</td>
            <td style="width: 195px">Last Name</td>
            <td style="width: 195px">Gender</td>
            <td class="modal-sm" style="width: 280px">Email</td>
            <td style="width: 264px">Password</td>
            <td style="width: 264px">Confirm Password</td>
            <td style="width: 264px">Country</td>
            <td style="width: 264px">City</td>
            <td style="width: 264px">File Upload</td>
            <td style="width: 297px">User Type</td>



        </tr>
    <%=fetchData()%>
    </table>


        

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






</asp:Content>
