<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="jobportalfyp.Table" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<asp:Label ID="Label1" runat="server" Text="Enter First Name"></asp:Label>
	<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
	<asp:Button ID="Button1" runat="server" Text="Search Name" />

	<asp:DropDownList ID="DropDownList1" runat="server">
		<asp:ListItem>Yes</asp:ListItem>
		<asp:ListItem>No</asp:ListItem>
		<asp:ListItem>Maybe</asp:ListItem>
</asp:DropDownList>

	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
		<Columns>
			<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
			<asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
			<asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
			<asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
			<asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
			<asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
			<asp:BoundField DataField="con_password" HeaderText="con_password" SortExpression="con_password" />
			<asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
			<asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
			<asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
			<asp:BoundField DataField="file_upload" HeaderText="file_upload" SortExpression="file_upload" />
			<asp:BoundField DataField="usertype" HeaderText="usertype" SortExpression="usertype" />
			<asp:BoundField DataField="approve" HeaderText="approve" SortExpression="approve" />
		</Columns>
	</asp:GridView>
	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringConnectionString %>" SelectCommand="SELECT * FROM [register] WHERE ([first_name] = @first_name)">
		<SelectParameters>
			<asp:ControlParameter ControlID="txtName" Name="first_name" PropertyName="Text" Type="String" />
		</SelectParameters>
	</asp:SqlDataSource>
</asp:Content>
