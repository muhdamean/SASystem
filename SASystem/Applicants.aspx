<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Applicants.aspx.cs" Inherits="SASystem.Applicants" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <link rel="stylesheet" type="text/css" href="assets/pages/notification/notification.css">
      <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="form-group">
                    <label class="col-form-label">First Name <span class="text-primary"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span> </label>
                    &nbsp;<input class="form-control" runat="server" id="txtFirstName" type="text" />
                </div>
                <div class="form-group">
                    <label class="col-form-label">Last Name</label><span class="text-primary"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span>&nbsp;<input class="form-control"  runat="server" id="txtLastName" type="text" />
                </div>
                <div class="form-group">
                    <label class="col-form-label">Middle Name</label>
                    <input class="form-control"  runat="server" id="txtMiddleName" type="text" />
                </div>
                <div class="form-group">
                 <label class="col-form-label">Select gender</label>
                    <asp:DropDownList id="dpGender" CssClass="form-control" AutoPostBack="True" runat="server">
                  <asp:ListItem Selected="True"> Select Gender </asp:ListItem>
                  <asp:ListItem > Male </asp:ListItem>
                  <asp:ListItem > Female </asp:ListItem>
               </asp:DropDownList>
                  </div>
             <div class="form-group">
                    <label class="col-form-label">Email <span class="text-primary"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span> </label>
                    &nbsp;<input class="form-control" runat="server" id="txtEmail" type="email" />
                </div>
                <div class="form-group">
                    <label class="col-form-label">Phone Number</label><span class="text-primary"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span>&nbsp;<input class="form-control"  runat="server" id="txtPhone" type="text" />
                </div>
                <div class="form-group">
                    <label class="col-form-label">Disability</label>
                    <input class="form-control"  runat="server" id="txtDisability" type="text" />
                </div>
                 <div class="form-group">
                 <label class="col-form-label">State</label>
                    <asp:DropDownList id="dpstate" CssClass="form-control" AutoPostBack="True" runat="server">
                  <asp:ListItem Selected="True"> Select State </asp:ListItem>
                  <asp:ListItem > Niger </asp:ListItem>
                  </asp:DropDownList>
                  </div>
               <%-- <div class="form-group">
                    <label class="col-form-label">State<span class="text-primary"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtState" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span>&nbsp;</label>&nbsp;<input class="form-control"  runat="server" id="txtState" type="text" />
                </div>--%>
                 <div class="form-group">
                 <label class="col-form-label">LGA</label>
                    <asp:DropDownList id="dpLGA" CssClass="form-control" AutoPostBack="True" runat="server">
                  <asp:ListItem Selected="True"> Select LGA </asp:ListItem>
                  <asp:ListItem >Agaie</asp:ListItem>
                             <asp:ListItem >Agwara</asp:ListItem>
                             <asp:ListItem >Bida</asp:ListItem>
                             <asp:ListItem >Borgu</asp:ListItem>
                             <asp:ListItem >Bosso</asp:ListItem>
                             <asp:ListItem >Chanchaga</asp:ListItem>
                             <asp:ListItem >Edati</asp:ListItem>
                             <asp:ListItem >Gbako</asp:ListItem>
                             <asp:ListItem >Gurara</asp:ListItem>
                             <asp:ListItem >Katcha</asp:ListItem>
                             <asp:ListItem >Kontagora</asp:ListItem>
                             <asp:ListItem >Lapai</asp:ListItem>
                             <asp:ListItem >Lavun</asp:ListItem>
                             <asp:ListItem >Magama</asp:ListItem>
                             <asp:ListItem >Mariga</asp:ListItem>
                             <asp:ListItem >Mashegu</asp:ListItem>
                             <asp:ListItem >Mokwa</asp:ListItem>
                             <asp:ListItem >Munya</asp:ListItem>
                             <asp:ListItem >Paikoro</asp:ListItem>
                             <asp:ListItem >Rafi</asp:ListItem>
                             <asp:ListItem >Rijau</asp:ListItem>
                             <asp:ListItem >Shiroro</asp:ListItem>
                             <asp:ListItem >Suleja</asp:ListItem>
                             <asp:ListItem >Tafa</asp:ListItem>
                             <asp:ListItem >Wushishi</asp:ListItem>
                           </asp:DropDownList>
                  </div>
                <%-- <div class="form-group">
                    <label class="col-form-label">LGA <span class="text-primary"><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtLGA" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span> </label>
                    &nbsp;<input class="form-control" runat="server" id="txtLGA" type="text" />
                </div>--%>
                <div class="form-group">
                    <label class="col-form-label">Next Of Kin Name</label><span class="text-primary"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtNOKName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span>&nbsp;<input class="form-control"  runat="server" id="txtNOKName" type="text" />
                </div>
                <div class="form-group">
                    <label class="col-form-label">Next Of Kin Phone</label>
                    <input class="form-control"  runat="server" id="txtNOKPhone" type="text" />
                </div>
                <div class="form-group">
                    <label class="col-form-label">Address<span class="text-primary"><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtAddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span>&nbsp;</label>&nbsp;<input class="form-control"  runat="server" id="txtAddress" type="text" />
                </div>
               <%--  <div class="form-group">
                    <label class="col-form-label">Status</label><span class="text-primary"><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtStatus" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span>&nbsp;<input class="form-control"  runat="server" id="txtStatus" type="text" />
                </div>--%>
                <div class="form-group">
                    <label class="col-form-label">Date Submitted</label>
                    <input class="form-control"  runat="server" id="txtDate" type="date" />
                </div>
                <asp:Button runat="server" ID="btnRegister" CssClass="btn btn-primary btn-sm col-md-7" Text="Register" OnClick="btnRegister_Click1" />
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
