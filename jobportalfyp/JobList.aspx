<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JobList.aspx.cs" Inherits="jobportalfyp.JobList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	
	<!-- CSS here -->
		<!--<link rel="stylesheet" href="assets/css/bootstrap.min.css">
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
		<link rel="stylesheet" href="assets/css/responsive.css">-->
	
	

	<!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Search  your job</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End -->
        <!-- Job List Area Start -->
        <div class="job-listing-area pt-120 pb-120">
            <div class="container">
                <div class="row">
                    <!-- Left content -->
                    <div class="col-xl-3 col-lg-3 col-md-4">
                        <div class="row">
                            <div class="col-12">
                                    <div class="small-section-tittle2 mb-45">
                                    <div class="ion"> <svg 
                                        xmlns="http://www.w3.org/2000/svg"
                                        xmlns:xlink="http://www.w3.org/1999/xlink"
                                        width="20px" height="12px">
                                    <path fill-rule="evenodd"  fill="rgb(27, 207, 107)"
                                        d="M7.778,12.000 L12.222,12.000 L12.222,10.000 L7.778,10.000 L7.778,12.000 ZM-0.000,-0.000 L-0.000,2.000 L20.000,2.000 L20.000,-0.000 L-0.000,-0.000 ZM3.333,7.000 L16.667,7.000 L16.667,5.000 L3.333,5.000 L3.333,7.000 Z"/>
                                    </svg>
                                    </div>
                                    <h4>Filter Jobs</h4>
                                </div>
                            </div>
                        </div>
                        <!-- Job Category Listing start -->
                        <div class="job-category-listing mb-50">
                            <!-- single one -->
                            <div class="single-listing">
                               <div class="small-section-tittle2">
                                     <h4>Job Category</h4>
                               </div>
                                <!-- Select job items start -->
                                <div class="select-job-items2">
                                     <!--<div class="select-job-items2">-->
                                    <asp:DropDownList ID="DropDownList2" runat="server">
										<asp:ListItem>IT</asp:ListItem>
										<asp:ListItem>Engineering</asp:ListItem>
                                        <asp:ListItem>Business</asp:ListItem>
                                        <asp:ListItem>Medical</asp:ListItem>
									</asp:DropDownList>
                                    <br />
                                         <br />
                                         <br />
                                         <br />
                                          <asp:Button ID="Category" runat="server" OnClick="Category_Click" class="genric-btn primary small" Font-Size="Smaller" Text="Filter" />
                                     <!--</div>-->
                                </div>
                                <!--  Select job items End-->
                                <!-- select-Categories start -->
                                <div class="select-Categories pt-80 pb-50">
                                    <div class="small-section-tittle2">
                                        <h4>Job Type</h4>
                                    </div>
                                    <div class="select-job-items2">
                                    <asp:DropDownList ID="DropDownList1" runat="server">
										<asp:ListItem>Full-Time</asp:ListItem>
										<asp:ListItem>Part-Time</asp:ListItem>
                                        <asp:ListItem>Remote</asp:ListItem>
                                        <asp:ListItem>Freelance</asp:ListItem>
									</asp:DropDownList>
                                        <br />
                                         <br />
                                         <br />
                                         <br />
                                          <asp:Button ID="Type" runat="server" OnClick="Type_Click" class="genric-btn primary small" Font-Size="Smaller" Text="Filter" />
										<!--<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>-->
                          
                                         
                                      </div>
                                    <br />
                                 
                                    
                                </div>
                                <!-- select-Categories End -->
                            </div>
                            <!-- single two -->
                            <div class="single-listing">
                               <div class="small-section-tittle2">
                                     <h4>Job Location</h4>
                               </div>
                                <!-- Select job items start -->
                                <div class="select-job-items2">
                                     <asp:DropDownList ID="DropDownList3" runat="server">
										<asp:ListItem>Kuala Lumpur</asp:ListItem>
										<asp:ListItem>Jakarta</asp:ListItem>
                                        <asp:ListItem>Singapore</asp:ListItem>
                                        <asp:ListItem>Bangkok</asp:ListItem>
									</asp:DropDownList>
                                    <br />
                                         <br />
                                         <br />
                                         <br />
                                          <asp:Button ID="Location" runat="server" OnClick="Location_Click" class="genric-btn primary small" Font-Size="Smaller" Text="Filter" />
                                </div>
                                <!--  Select job items End-->
                                <!-- select-Categories start -->
                                <div class="select-Categories pt-80 pb-50">
                                    <div class="small-section-tittle2">
                                        <h4>Experience</h4>
                                    </div>
                                     <div class="select-job-items2">
                                     <asp:DropDownList ID="DropDownList4" runat="server">
										<asp:ListItem>1 years</asp:ListItem>
										<asp:ListItem>2 years</asp:ListItem>
                                        <asp:ListItem>3 years</asp:ListItem>
                                        <asp:ListItem>6 years</asp:ListItem>
									</asp:DropDownList>
                                         <br />
                                         <br />
                                         <br />
                                         <br />
                                          <asp:Button ID="Experince" runat="server" OnClick="Experince_Click" class="genric-btn primary small" Font-Size="Smaller" Text="Filter" />

                                    </div>
                                </div>
                                <br />
                                <!-- select-Categories End -->
                            </div>
                            <!-- single three -->
                            <div class="single-listing">
                                <!-- select-Categories start -->
                      
                            </div>
                            <div class="single-listing">
                                <!-- Range Slider Start -->
                                <aside class="left_widgets p_filter_widgets price_rangs_aside sidebar_box_shadow">
                                    <div class="small-section-tittle2">
                                        <h4>Filter Jobs</h4>
                                    </div>
                                    <div class="select-job-items2">
                                     <!--<asp:DropDownList ID="DropDownList5" runat="server">
										<asp:ListItem>1-2 Years</asp:ListItem>
										<asp:ListItem>2-3 Years</asp:ListItem>
                                        <asp:ListItem>3-6 Years</asp:ListItem>
                                        <asp:ListItem>6-8 Years</asp:ListItem>
									</asp:DropDownList>-->
                                        <br />
                                        <br />
                                    </div>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Button ID="Filter" runat="server" OnClick="Filter_Click" class="genric-btn primary-border large" Font-Size="Large" Text="Filter Results" />
                                    



                                </aside>
                              <!-- Range Slider End -->
                            </div>
                        </div>
                        <!-- Job Category Listing End -->
                    </div>
                    <!-- Right content -->
                    <div class="col-xl-9 col-lg-9 col-md-8">
                        <!-- Featured_job_start -->
                        <section class="featured-job-area">
                            <div class="container">
                                <!-- Count of Job list Start -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="count-job mb-35">
                                            <span>39, 782 Jobs found</span>
                                            <!-- Select job items start -->
                                            <div class="select-job-items">
                                                <span>Sort by</span>
                                                <select name="select">
                                                    <option value="">None</option>
                                                    <option value="">job list</option>
                                                    <option value="">job list</option>
                                                    <option value="">job list</option>
                                                </select>
                                            </div>
                                            <!--  Select job items End-->
                                        </div>
                                    </div>
                                </div>
                                <!-- Count of Job list End -->
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets/img/icon/job-list1.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4><asp:Label ID="Label4" runat="server" Text=""></asp:Label></h4>
                                            </a>
                                            <ul>
                                                <li><asp:Label ID="Label14" runat="server" Text=""></asp:Label></li>
                                                <li><i class="fas fa-map-marker-alt"></i><asp:Label ID="Label27" runat="server" Text=""></asp:Label></li>
                                                <li><asp:Label ID="Label28" runat="server" Text=""></asp:Label></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <asp:Button ID="Apply1" runat="server" OnClick="Apply1_Click" class="genric-btn primary-border small" Font-Size="Small" Text="Apply Now1" />
										<asp:Label ID="Try" runat="server" Text=""></asp:Label>
                                        <span>
											<asp:Label ID="Label29" runat="server" Text=""></asp:Label></span>
                                    </div>
                                </div>
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets/img/icon/job-list2.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h4>
                                            </a>
                                            <ul>
                                                <li><asp:Label ID="Label15" runat="server" Text=""></asp:Label></li>
                                                <li><i class="fas fa-map-marker-alt"></i><asp:Label ID="Label26" runat="server" Text=""></asp:Label></li>
                                                <li><asp:Label ID="Label13" runat="server" Text="$3500 - $4000"></asp:Label></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <asp:Button ID="Button1" runat="server" class="genric-btn primary-border small" Font-Size="Small" Text="Apply Now" />
                                        <span>
                                            <asp:Label ID="Label30" runat="server" Text=""></asp:Label></span>
                                    </div>
                                </div>
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets/img/icon/job-list3.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4><asp:Label ID="Label2" runat="server" Text=""></asp:Label></h4>
                                            </a>
                                            <ul>
                                                <li><asp:Label ID="Label16" runat="server" Text=""></asp:Label></li>
                                                <li><i class="fas fa-map-marker-alt"></i><asp:Label ID="Label25" runat="server" Text=""></asp:Label></li>
                                                <li><asp:Label ID="Label12" runat="server" Text=""></asp:Label></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <asp:Button ID="Button2" runat="server" class="genric-btn primary-border small" Font-Size="Small" Text="Apply Now" />
                                        <span>
                                            <asp:Label ID="Label31" runat="server" Text=""></asp:Label>
                                        </span>
                                    </div>
                                </div>
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets/img/icon/job-list4.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4><asp:Label ID="Label3" runat="server" Text=""></asp:Label></h4>
                                            </a>
                                            <ul>
                                                <li><asp:Label ID="Label17" runat="server" Text=""></asp:Label></li>
                                                <li><i class="fas fa-map-marker-alt"></i><asp:Label ID="Label24" runat="server" Text=""></asp:Label></li>
                                                <li><asp:Label ID="Label11" runat="server" Text=""></asp:Label></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <asp:Button ID="Button3" runat="server" class="genric-btn primary-border small" Font-Size="Small" Text="Apply Now" />
                                        <span>
                                            <asp:Label ID="Label32" runat="server" Text=""></asp:Label>
                                        </span>
                                    </div>
                                </div>
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets/img/icon/job-list1.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4><asp:Label ID="Label5" runat="server" Text=""></asp:Label></h4>
                                            </a>
                                            <ul>
                                                <li><asp:Label ID="Label18" runat="server" Text=""></asp:Label></li>
                                                <li><i class="fas fa-map-marker-alt"></i><asp:Label ID="Label23" runat="server" Text=""></asp:Label></li>
                                                <li><asp:Label ID="Label10" runat="server" Text=""></asp:Label></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <asp:Button ID="Button4" runat="server" class="genric-btn primary-border small" Font-Size="Small" Text="Apply Now" />
                                        <span>
                                            <asp:Label ID="Label33" runat="server" Text=""></asp:Label>
                                        </span>
                                    </div>
                                </div>
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets/img/icon/job-list3.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4><asp:Label ID="Label6" runat="server" Text=""></asp:Label></h4>
                                            </a>
                                            <ul>
                                                <li><asp:Label ID="Label19" runat="server" Text=""></asp:Label></li>
                                                <li><i class="fas fa-map-marker-alt"></i><asp:Label ID="Label22" runat="server" Text=""></asp:Label></li>
                                                <li><asp:Label ID="Label9" runat="server" Text=""></asp:Label></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <asp:Button ID="Button5" runat="server" class="genric-btn primary-border small" Font-Size="Small" Text="Apply Now" />
                                        <span>
                                            <asp:Label ID="Label34" runat="server" Text=""></asp:Label>
                                        </span>
                                    </div>
                                </div>
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets/img/icon/job-list4.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4><asp:Label ID="Label7" runat="server" Text=""></asp:Label></h4>
                                            </a>
                                            <ul>
                                                <li><asp:Label ID="Label20" runat="server" Text=""></asp:Label></li>
                                                <li><i class="fas fa-map-marker-alt"></i><asp:Label ID="Label21" runat="server" Text=""></asp:Label></li>
                                                <li><asp:Label ID="Label8" runat="server" Text=""></asp:Label></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <asp:Button ID="Apply" runat="server" class="genric-btn primary-border small" Font-Size="Small" Text="Apply Now" />
                                        <span>
                                            <asp:Label ID="Label35" runat="server" Text=""></asp:Label>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Featured_job_end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Job List Area End -->
        <!--Pagination Start  -->
        <div class="pagination-area pb-115 text-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="single-wrap d-flex justify-content-center">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-start">
                                    <li class="page-item active"><a class="page-link" href="#">01</a></li>
                                    <li class="page-item"><a class="page-link" href="#">02</a></li>
                                    <li class="page-item"><a class="page-link" href="#">03</a></li>
                                <li class="page-item"><a class="page-link" href="#"><span class="ti-angle-right"></span></a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Pagination End  -->
	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringConnectionString %>" SelectCommand="SELECT * FROM [posts] WHERE ([category] = @category)">
		<SelectParameters>
			<asp:ControlParameter ControlID="TextBox1" Name="category" PropertyName="Text" Type="String" />
		</SelectParameters>
	</asp:SqlDataSource>

      <!-- JS here -->
	




</asp:Content>
