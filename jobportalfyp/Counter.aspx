<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Counter.aspx.cs" Inherits="jobportalfyp.Counter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<link href="assets/css/counter.css" rel="stylesheet" />

<div class="container">
	<div class="row">
	    <br/>
	   <div class="col text-center">
		<h2>Admin Dashboard</h2>
		<p>Easily view the statistics all in one page</p>
		</div>
		
             
		
	</div>
		<div class="row text-center">
	        <div class="col">
	        <div class="counter">
              <i class="fa fa-code fa-2x"></i>
             <!-- <h2 class="timer count-title count-number" data-to="100" data-speed="1500"></h2>-->
                <h2><asp:Label ID="Label4" class="timer count-title count-number" runat="server" Text="35" ></asp:Label></h2>
               <p class="count-text ">Our Customers</p>
            </div>
	        </div>
              <div class="col">
               <div class="counter">
                  <i class="fa fa-coffee fa-2x"></i>
                  <!--<h2 class="timer count-title count-number" data-to="1700" data-speed="1500"></h2>-->
				   <h2><asp:Label ID="Label1" class="timer count-title count-number" runat="server" Text="" ></asp:Label></h2>
                  <p class="count-text ">Pending User Requests</p>
                </div>
              </div>
              <div class="col">
                  <div class="counter">
                      <i class="fa fa-coffee fa-2x"></i>
                      <!--<h2 class="timer count-title count-number" data-to="11900" data-speed="1500"></h2>-->
                      <h2><asp:Label ID="lblCounter" class="timer count-title count-number" runat="server" Text="" ></asp:Label></h2>
                      <p class="count-text ">Total Website Visits</p>
                    </div>

              </div>
              <div class="col">
              <div class="counter">
                  <i class="fa fa-bug fa-2x"></i>
                 <!-- <h2 class="timer count-title count-number" data-to="157" data-speed="1500"></h2>-->
                  <h2><asp:Label ID="Label3" class="timer count-title count-number" runat="server" Text="19" ></asp:Label></h2>
                  <p class="count-text ">Approved User Count</p>
              </div>
              </div>
         </div>
</div>



	<!--<script src="assets/js/counter.js"></script>-->

</asp:Content>
