<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="SASystem.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="form-group">
                    <label class="col-form-label">Email</label>
                    <input class="form-control form-control-sm" id="txtEmail" type="email" />
                </div>
                <div class="form-group">
                    <label class="col-form-label">Phone Number</label>
                    <input class="form-control" id="txtPhone" type="text" />
                </div>
                <div class="form-group">
                    <label class="col-form-label">Date Of Birth</label>
                    <input class="form-control" id="txtDOB" type="date" />
                </div>
                <div class="form-group">
                    <label class="col-form-label">Education Level</label>
                    <input class="form-control" id="txtEducationLevel" type="text" />
                </div>
                <asp:Button runat="server" ID="btnRegister" CssClass="btn btn-primary btn-sm" Text="Register" />
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
