<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Ch19Cart.Confirmation" %>

<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <p>Thank you for your order! Click <a href="#">here</a> to track your package.</p>
    <asp:Button ID="btnReturn" runat="server" Text="Return to Order page" CssClass="btn" OnClick="btnReturn_Click" />
</asp:Content>