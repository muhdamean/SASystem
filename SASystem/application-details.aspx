<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="application-details.aspx.cs" Inherits="SASystem.application_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
     <div class="container">
        <div class="row">
            <div class=" card col-md-8 mx-auto">
                <div class="card-header">
                    <h5>My Applications</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <label class="col-md-2">Name:</label>
                                <div class="col-md-10">
                                    <label id="lblName" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                             <div class="row">
                                <label class="col-md-2">Email:</label>
                                <div class="col-md-10">
                                    <label id="lblEmail" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                             <div class="row">
                                <label class="col-md-2">Jamb No:</label>
                                <div class="col-md-10">
                                    <label id="lblJamb" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                             <div class="row">
                                <label class="col-md-2">Admission No:</label>
                                <div class="col-md-10">
                                    <label id="lblAdmission" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                             <div class="row">
                                <label class="col-md-2">School Name:</label>
                                <div class="col-md-10">
                                    <label id="lblSchool" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                             <div class="row">
                                <label class="col-md-2">Year Admitted:</label>
                                <div class="col-md-10">
                                    <label id="lblYearAdmitted" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                             <div class="row">
                                <label class="col-md-2">Course:</label>
                                <div class="col-md-10">
                                    <label id="lblCourse" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-md-2">Academic Session:</label>
                                <div class="col-md-10">
                                    <label id="lblAcademicSession" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-md-2">ApplicationStatus:</label>
                                <div class="col-md-10">
                                    <label id="lblApplicationStatus" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-md-2">Paid:</label>
                                <div class="col-md-10">
                                    <label id="lblPaid" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-md-2">School Category:</label>
                                <div class="col-md-10">
                                    <label id="lblSchoolCategory" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-md-2">Date of Application:</label>
                                <div class="col-md-10">
                                    <label id="lblDateSubmitted" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-md-2">Admission Letter:</label>
                                <div class="col-md-10">
                                    <label id="lblAdmissionLetter" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-md-2">Indigene Certificate:</label>
                                <div class="col-md-10">
                                    <label id="lblIndigeneCert" class="col-form-label" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-md-2"></label>
                                <div class="col-md-10">
                                    <a href="update-application.aspx?i=<%=hfE.Value.Trim()%>" class="btn btn-info btn-sm">Edit</a>
                                    <a href="myapplications.aspx" class="btn btn-info btn-sm">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:HiddenField ID="hfE" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
