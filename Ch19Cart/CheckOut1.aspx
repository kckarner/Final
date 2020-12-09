<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckOut1.aspx.cs" Inherits="Ch19Cart.CheckOut1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <p>Please enter the following information:</p>

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        CssClass="text-danger summary"
        HeaderText="Please correct these entries:" />

    <div class="form-group">
        <label class="control-label col-sm-2">Email Address:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtEmail1" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
        </div>
        <div class="col-sm-5">
            <asp:RequiredFieldValidator ID="rfvEmail1" runat="server" 
                ErrorMessage="Email address" CssClass="text-danger" 
                Display="Dynamic" ControlToValidate="txtEmail1">Required</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail1" runat="server" 
                ErrorMessage="Email address" CssClass="text-danger"
                Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail1">Must be a valid email address</asp:RegularExpressionValidator>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">First Name:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>  
        </div>
        <div class="col-sm-5">
            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                ErrorMessage="First name" CssClass="text-danger" 
                Display="Dynamic" ControlToValidate="txtFirstName">Required</asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">Last Name:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-5">
            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                ErrorMessage="Last name" CssClass="text-danger" 
                Display="Dynamic" ControlToValidate="txtLastName">Required</asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">Address:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-5">
            <asp:RequiredFieldValidator ID="rfvStreetAddress" runat="server" 
                ErrorMessage="Billing address" Text="Required"
                CssClass="text-danger" Display="Dynamic" 
                ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">City:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-5">
            <asp:RequiredFieldValidator ID="rfvCity" runat="server" 
                ErrorMessage="Billing city" Text="Required" CssClass="text-danger" 
                Display="Dynamic" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">State:</label>
        <div class="col-sm-5">
            <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" 
                AppendDataBoundItems="True" DataSourceID="SqlDataSource1" 
                DataTextField="StateName" DataValueField="StateCode">
                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HalloweenConnection %>" 
                SelectCommand="SELECT [StateCode], [StateName] FROM [States] ORDER BY [StateCode]">
            </asp:SqlDataSource>
        </div>
        <div class="col-sm-5">
            <asp:RequiredFieldValidator ID="rfvState" runat="server" 
                ErrorMessage="Billing state" Text="Required" CssClass="text-danger" 
                Display="Dynamic" ControlToValidate="ddlState"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">Zip code:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
        </div>
        <div class="col-sm-5">
            <asp:RequiredFieldValidator ID="rfvZip" runat="server" 
                ErrorMessage="Billing zip code" Text="Required" CssClass="text-danger" 
                Display="Dynamic" ControlToValidate="txtZip"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">Phone:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
        </div>
        <div class="col-sm-5">
            <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" 
                ErrorMessage="Phone number" CssClass="text-danger"
                Display="Dynamic" ControlToValidate="txtPhone">Required</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" 
                ErrorMessage="Phone number" CssClass="text-danger"
                Display="Dynamic" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                ControlToValidate="txtPhone">Use this format: 123-456-7890</asp:RegularExpressionValidator>
        </div>
    </div>        

    <%-- buttons --%>
    <div class="form-group">
        <div class="col-sm-12">
            <asp:Button ID="btnCheckOut" runat="server" Text="Continue Check Out" CssClass="btn" OnClick="btnCheckOut_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel Order" CssClass="btn"
                CausesValidation="False" OnClick="btnCancel_Click" />
            <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping" CssClass="btn"
                CausesValidation="False" OnClick="btnContinue_Click" />
        </div>
    </div>
</asp:Content>