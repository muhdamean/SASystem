<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="add-user.aspx.cs" Inherits="SASystem.admin.add_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <!-- Page body start -->
    <div class="page-body">
        <div class="row">
            <div class="col-sm-12">
                <!-- Basic Form Inputs card start -->
                <div class="card">
                    <div class="card-header">
                        <h5>Add User</h5>
                        <span>Add user with role</span>
                        
                         <label id="lblMsg" runat="server" class="col-form-label"></label>

                    </div>
                    <div class="card-block">
                        <h4 class="sub-title">Basic Inputs</h4>
                        <div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Name</label>
                                <div class="col-sm-10">
                                    <input type="text" required id="txtName" runat="server" placeholder="Enter full name" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="text" required runat="server" id="txtEmail" class="form-control"
                                        placeholder="Enter your email">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Phone Number</label>
                                <div class="col-sm-10">
                                    <input type="text" required id="txtPhone" runat="server" class="form-control"
                                        placeholder="Enter your phone number">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Select Role</label>
                                <div class="col-sm-10">
                                    <select id="ddUserRole" runat="server" class="form-control">
                                        <option value="0">Select User Role</option>
                                        <option value="Stakeholder">Stakeholder</option>
                                        <option value="Admin">Administrator</option>
                                    </select>
                                </div>
                            </div>
                           <div class="form-group row">
                                <label class="col-sm-2 col-form-label"></label>
                                <div class="col-sm-10">
                                    <button type="submit" id="btnAddUser" onserverclick="btnAddUser_ServerClick" runat="server" class="btn btn-success btn-sm">Save</button>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>
                <!-- Basic Form Inputs card end -->
            </div>
        </div>
    </div>
    <!-- Page body end -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
