<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="tacgia.aspx.cs" Inherits="QLCB.Management.tacgia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TacGiaID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="TacGiaID" HeaderText="TacGiaID" ReadOnly="True" SortExpression="TacGiaID" />
            <asp:BoundField DataField="TenTG" HeaderText="TenTG" SortExpression="TenTG" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GioithieutintucConnectionString %>" SelectCommand="SELECT [TacGiaID], [TenTG], [Email] FROM [TacGia]">
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="TacGiaID" DataSourceID="SqlDataSource1" Height="50px" Width="174px">
        <Fields>
            <asp:BoundField DataField="TacGiaID" HeaderText="TacGiaID" ReadOnly="True" SortExpression="TacGiaID" />
            <asp:BoundField DataField="TenTG" HeaderText="TenTG" SortExpression="TenTG" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpMainContent1" runat="server">
</asp:Content>
