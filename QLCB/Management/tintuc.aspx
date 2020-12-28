<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="tintuc.aspx.cs" Inherits="QLCB.Management.tintuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TinID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="TinID" HeaderText="TinID" ReadOnly="True" SortExpression="TinID" />
            <asp:BoundField DataField="NoiDung" HeaderText="NoiDung" SortExpression="NoiDung" />
            <asp:BoundField DataField="NgayGui" HeaderText="NgayGui" SortExpression="NgayGui" />
            <asp:BoundField DataField="TacGiaID" HeaderText="TacGiaID" SortExpression="TacGiaID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GioithieutintucConnectionString %>" SelectCommand="SELECT [TinID], [NoiDung], [NgayGui], [TacGiaID] FROM [TinTuc]">
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="TinID" DataSourceID="SqlDataSource2" Height="50px" Width="257px">
        <Fields>
            <asp:BoundField DataField="TinID" HeaderText="TinID" ReadOnly="True" SortExpression="TinID" />
            <asp:BoundField DataField="NoiDung" HeaderText="NoiDung" SortExpression="NoiDung" />
            <asp:BoundField DataField="NgayGui" HeaderText="NgayGui" SortExpression="NgayGui" />
            <asp:BoundField DataField="TacGiaID" HeaderText="TacGiaID" SortExpression="TacGiaID" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpMainContent1" runat="server">
</asp:Content>
