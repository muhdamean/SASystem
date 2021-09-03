<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="SASystem.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="assets/pages/notification/notification.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="form-group">
                    <label class="col-form-label">Email <span class="text-primary"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span> </label>
                    &nbsp;<input class="form-control" runat="server" id="txtEmail" type="email" />
                </div>
                <div class="form-group">
                    <label class="col-form-label">Phone Number</label><span class="text-primary"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span>&nbsp;<input class="form-control"  runat="server" id="txtPhone" type="text" />
                </div>
                <div class="form-group">
                    <label class="col-form-label">Date Of Birth</label>
                    <input class="form-control"  runat="server" id="txtDOB" type="date" />
                </div>
                 <div class="form-group">
                 <label class="col-form-label">Education Level</label>
                    <asp:DropDownList id="dpeducation" CssClass="form-control" AutoPostBack="True" runat="server">
                  <asp:ListItem disable>Select Education Level</asp:ListItem>
                  <asp:ListItem >Nursery</asp:ListItem>
                             <asp:ListItem >Primary</asp:ListItem>
                             <asp:ListItem >Secondary</asp:ListItem>
                             <asp:ListItem >Tertiary</asp:ListItem>
                           </asp:DropDownList>
                  </div>
               <%-- <div class="form-group">
                    <label class="col-form-label">Education Level<span class="text-primary"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEducationLevel" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span>&nbsp;</label>&nbsp;<input class="form-control"  runat="server" id="txtEducationLevel" type="text" />
                </div>--%>
                <asp:Button runat="server" ID="btnRegister" CssClass="btn btn-primary btn-sm col-md-10" Text="Register" OnClick="btnRegister_Click" />
                <asp:Label ID="lblmessage" runat="server"></asp:Label>
        </div>
<!-- notification js -->
<script type="text/javascript" src="assets/js/bootstrap-growl.min.js"></script>
<script type="text/javascript" src="assets/pages/notification/notification.js"></script>
    </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
