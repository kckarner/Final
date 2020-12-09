<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckOut2.aspx.cs" Inherits="Ch19Cart.CheckOut2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        CssClass="text-danger summary"
        HeaderText="Please correct these entries:" />

    <div class="form-group">
        <label class="control-label col-sm-2">Shipping:</label>
        <div class="col-sm-5">
            <asp:RadioButtonList id="rblShippingMethod" runat="server" CssClass="radio">
                <asp:listitem Value="ground" selected="true">UPS Ground</asp:listitem>
                <asp:listitem Value="second">UPS Second Day</asp:listitem>
                <asp:listitem Value="overnight">Federal Express Overnight</asp:listitem>
            </asp:RadioButtonList>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">Payment:</label>
        <div class="col-sm-5">
            <asp:DropDownList ID="ddlPayment" runat="server" CssClass="form-control">
                <asp:ListItem Text="Visa" Value="visa"></asp:ListItem>
                <asp:ListItem Text="Master Card" Value="mc"></asp:ListItem>
                <asp:ListItem Text="American Express" Value="amex"></asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">Card Number:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-5">
            <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" 
                ErrorMessage="Card Number" CssClass="text-danger" 
                Display="Dynamic" ControlToValidate="txtCardNumber">Required</asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">Expiration:</label>
        <div class="col-sm-3">
            <asp:DropDownList ID="ddlMonth" runat="server" CssClass="form-control">
                <asp:ListItem Text="January" Value="1"></asp:ListItem>
                <asp:ListItem Text="February" Value="2"></asp:ListItem>
                <asp:ListItem Text="March" Value="3"></asp:ListItem>
                <asp:ListItem Text="April" Value="4"></asp:ListItem>
                <asp:ListItem Text="May" Value="5"></asp:ListItem>
                <asp:ListItem Text="June" Value="6"></asp:ListItem>
                <asp:ListItem Text="July" Value="7"></asp:ListItem>
                <asp:ListItem Text="August" Value="8"></asp:ListItem>
                <asp:ListItem Text="September" Value="9"></asp:ListItem>
                <asp:ListItem Text="October" Value="10"></asp:ListItem>
                <asp:ListItem Text="November" Value="11"></asp:ListItem>
                <asp:ListItem Text="December" Value="12"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-sm-2">
            <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control">
            </asp:DropDownList>
        </div>
    </div>

    <%-- buttons --%>
    <div class="form-group">
        <div class="col-sm-12">
            <asp:Button ID="btnAccept" runat="server" Text="Accept Order" CssClass="btn" OnClick="btnAccept_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel Order" CssClass="btn"
                CausesValidation="False" OnClick="btnCancel_Click" />
            <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping" CssClass="btn"
                CausesValidation="False" OnClick="btnContinue_Click" />
        </div>
    </div>
</asp:Content>