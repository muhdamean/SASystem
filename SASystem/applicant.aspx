<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="applicant.aspx.cs" Inherits="SASystem.applicant" %>
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
            <%--<div class="page-header card">
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <asp:Label ID="lblmsg" Width="80%" runat="server" Text=""></asp:Label></div>
                    <div class="col-lg-8">
                        <div class="page-header-title">
                            <i class="icofont icofont-table bg-c-blue"></i>
                            <div class="d-inline">
                                <h4>Academic Sessions</h4>
                                <span>Add/ Remove and set Current Session</span>
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
                                <li class="breadcrumb-item"><a href="#!">Session</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>--%>
            <!-- Page-header end -->

            <!-- Page-body start -->
            <div class="page-body">
                <!-- Basic table card start -->
                <div class="card">
                    <div class="card-header">
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


                        <div class="col-sm-12"  runat="server">
                            <!-- Basic Form Inputs card start -->
                            <div class="form-group row">
                                <div class="col-md-3">
                                    <label class="col-form-label">Search By State</label>
                                    <input type="text" runat="server" id="txtState" class="form-control">
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label">LGA</label>
                                    <input type="text" runat="server" id="txtLGA" class="form-control">
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label">From</label>
                                    <input type="date" runat="server" id="txtFromDate" class="form-control">
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label">To</label>
                                    <input type="date" runat="server" id="txtToDate"  class="form-control">
                                </div>
                            </div>
                        </div>
                     <div class="col-sm-12">
                                    <asp:Button ID="btnSearch" Width="20%" CssClass="btn btn-sm btn-primary" runat="server" Text="Search Record" OnClick="btnSearch_Click" />
                                </div>
                    


                    <div class="card-block table-border-style">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" GridLines="None" CssClass="table" runat="server" AutoGenerateColumns="False" AllowPaging="true" PageSize="20" >
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                                    <asp:HyperLinkField DataNavigateUrlFields="id" HeaderText="Full Name"  DataTextField="fullname" DataNavigateUrlFormatString="screening.aspx?id={0}" />
                                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                    <asp:BoundField DataField="LGA" HeaderText="LGA" SortExpression="LGA" />
                                    <asp:BoundField DataField="Disability" HeaderText="Disability" SortExpression="Disability" />
                                    <asp:TemplateField HeaderText="Account Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStatus" CssClass='<%#Eval("status").ToString() == "Not Active"? "label label-danger":"label label-success" %>' Text='<%#Eval("status").ToString() == "0"? "Not Active": "Active" %>' runat="server" Width="100px" style="text-align:center; font-size:15px" ></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Applicantion Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStatus" CssClass='<%#Eval("ApplicationStatus").ToString() == "Pending"? "badge badge-warning badge-lg": Eval("ApplicationStatus").ToString() == "Successful"? "badge badge-success badge-lg" :"badge badge-danger badge-lg" %>' runat="server" Text='<%#Eval("ApplicationStatus") %>'  Width="100px" style="text-align:center; font-size:15px" ></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <PagerStyle CssClass="pagination" />
                            </asp:GridView>
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
