<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="chude.aspx.cs" Inherits="QLCB.Management.chude" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ChuDeID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="ChuDeID" HeaderText="ChuDeID" ReadOnly="True" SortExpression="ChuDeID" />
            <asp:BoundField DataField="TenCD" HeaderText="TenCD" SortExpression="TenCD" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GioithieutintucConnectionString %>" SelectCommand="SELECT [ChuDeID], [TenCD] FROM [ChuDe]">
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ChuDeID" DataSourceID="SqlDataSource1" Height="50px" Width="214px">
        <Fields>
            <asp:BoundField DataField="ChuDeID" HeaderText="ChuDeID" ReadOnly="True" SortExpression="ChuDeID" />
            <asp:BoundField DataField="TenCD" HeaderText="TenCD" SortExpression="TenCD" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpMainContent1" runat="server">
</asp:Content>
