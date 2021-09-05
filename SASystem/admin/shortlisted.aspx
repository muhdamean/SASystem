<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="shortlisted.aspx.cs" Inherits="SASystem.admin.shortlisted" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
     <div class="theme-loader">
        <div class="ball-scale">
            <div class='contain'>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Pre-loader end -->

    <div id="pcoded" class="pcoded">



        <!-- Main-body start -->
        <div class="page-wrapper">
            <!-- Page-header start -->
            <div class="page-header card">
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <asp:Label ID="lblmsg" Width="80%" runat="server" Text=""></asp:Label></div>
                    <div class="col-lg-8">
                        <div class="page-header-title">
                            <i class="icofont icofont-table bg-c-blue"></i>
                            <div class="d-inline">
                                <h4>Successful Applicants&nbsp(<asp:Label ID="lblsession" Font-Size="16px" runat="server" Text=""></asp:Label>)</h4>
                                <span>List of Successful Applicants for Embursment</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="#!">
                                        <i class="icofont icofont-home"></i>
                                    </a>
                                </li>
                                <li class="breadcrumb-item"><a href="#!">Dashboard/</a>
                                </li>
                                <li class="breadcrumb-item"><a href="#!">Shortlisted</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
            <!-- Page-header end -->

            <!-- Page-body start -->
            <div class="page-body">
                <!-- Basic table card start -->
                <div class="card">
                    <div class="card-header">
                        <div class="card-header-left">
                             <asp:LinkButton ID="btnExport" OnClick="btnExport_Click" CssClass="btn btn-sm btn-primary pull-1" runat="server">Export Data</asp:LinkButton>
                            </div>
                        <div class="card-header-right">
                            <ul class="list-unstyled card-option">
                                <li><i class="icofont icofont-simple-left "></i></li>
                                <li><i class="icofont icofont-maximize full-card"></i></li>
                                <li><i class="icofont icofont-minus minimize-card"></i></li>
                                <li><i class="icofont icofont-refresh reload-card"></i></li>
                                <li><i class="icofont icofont-error close-card"></i></li>
                            </ul>
                        </div>
                    </div>

                    <div class="card-block table-border-style">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" GridLines="None" CssClass="table" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowPaging="True" PageSize="20" ClientIDMode="Static" EmptyDataText="NO APPLICANT HAS BEEN APPROVD FOR DISBURSEMENT THIS SESSION">
                                <Columns>
                                    <asp:TemplateField HeaderText="#">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>

                                    </asp:TemplateField>
                                    <asp:BoundField DataField="fullname" HeaderText="Full Name" SortExpression="fullname" />
                                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                    <asp:BoundField DataField="LGA" HeaderText="LGA" SortExpression="LGA" />
                                    <asp:BoundField DataField="AcademicSession" HeaderText="Session" SortExpression="AcademicSession" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="lblsession" Visible="false" runat="server" Text='<%#Eval("AcademicSession") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="JambNo" HeaderText="Jamb No" SortExpression="JambNo" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="AdmissionNo" HeaderText="Admission No" SortExpression="AdmissionNo" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="SchoolName" HeaderText="School Name" SortExpression="SchoolName" ItemStyle-HorizontalAlign="Center" />
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStatus" CssClass='<%#Eval("ApplicationStatus").ToString() == "Successful"? "label label-success":"label label-warning" %>' Text='<%#Eval("ApplicationStatus").ToString() == "Successful"? "Successful":"Pending" %>' runat="server" ></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <PagerStyle CssClass="dataTables_paginate" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sasyCon %>" SelectCommand="select tblApplicationDetails.*, tblApplicants.*, tblApplicants.FName + ' '+ tblApplicants.MName + ' '+ tblApplicants.LName as 'fullname'  from tblApplicationDetails inner join tblApplicants on tblApplicationDetails.Email = tblApplicants.Email inner join tblSession on tblSession.SessionName = tblApplicationDetails.AcademicSession where ApplicationStatus = 'Successful' and tblSession.status='1'"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main-body end -->

        <div id="styleSelector">
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
