<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SASystem.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div>
                    <h3>Scholarship Application</h3>
                    <br />
                    <span>Kindly login</span>
                </div>
                <div class="form-group">
                    <label class="col-form-label">Email</label>
                    <input class="form-control form-control-sm" runat="server" required id="txtEmail" type="email" />
                </div>
                <div class="form-group">
                    <label class="col-form-label">Password</label>
                    <input class="form-control" id="txtPass" runat="server" required type="password" />
                </div>
                
                <asp:Button runat="server" ID="btnLogin" OnClick="btnLogin_Click" CssClass="btn btn-primary btn-sm" Text="Login" />
                <br />
                <label id="lblMsg" runat="server" class="col-form-label text-danger"></label>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
