 <%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SASystem.admin.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="page-body">
        <div class="row">
            <!-- card1 start -->
            <div class="col-md-6 col-xl-3">
                <div class="card widget-card-1">
                    <div class="card-block-small">
                        <i class="icofont icofont-user-alt-7 bg-c-blue card1-icon"></i>
                        <span class="text-c-blue f-w-600">Application</span>
                        <h4>
                            <label id="lblTotalApplication" runat="server"></label>
                        </h4>
                        <div>
                            <span class="f-left m-t-10 text-muted">
                                <i class="text-c-blue f-16 icofont icofont-warning m-r-10"></i>New Applications
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- card1 end -->
            <!-- card1 start -->
            <div class="col-md-6 col-xl-3">
                <div class="card widget-card-1">
                    <div class="card-block-small">
                        <i class="icofont icofont-ui-home bg-c-pink card1-icon"></i>
                        <span class="text-c-pink f-w-600">Screening</span>
                        <h4>
                            <label id="lblTotalScreening" runat="server"></label>
                        </h4>
                        <div>
                            <span class="f-left m-t-10 text-muted">
                                <i class="text-c-pink f-16 icofont icofont-calendar m-r-10"></i>Under Screening
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- card1 end -->
            <!-- card1 start -->
            <div class="col-md-6 col-xl-3">
                <div class="card widget-card-1">
                    <div class="card-block-small">
                        <i class="icofont icofont-pay bg-c-green card1-icon"></i>
                        <span class="text-c-green f-w-600">Shortlisted</span>
                        <h4>
                            <label id="lblTotalShortlist" runat="server"></label>
                        </h4>
                        <div>
                            <span class="f-left m-t-10 text-muted">
                                <i class="text-c-green f-16 icofont icofont-tag m-r-10"></i>Shortlisted Applicants</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- card1 end -->
            <!-- card1 start -->
            <div class="col-md-6 col-xl-3">
                <div class="card widget-card-1">
                    <div class="card-block-small">
                        <i class="icofont icofont-user bg-c-yellow card1-icon"></i>
                        <span class="text-c-yellow f-w-600">Applicants</span>
                        <h4>
                            <label id="lblTotalApplicants" runat="server"></label>
                        </h4>
                        <div>
                            <span class="f-left m-t-10 text-muted">
                                <i class="text-c-yellow f-16 icofont icofont-refresh m-r-10"></i>Total Applicants
                            </span>
                        </div>
                    </div>
                </div> 
            </div>
            <!-- card1 end -->
            <!-- Statestics Start -->
            <div class="col-md-12 col-xl-8">
                <div class="card">
                    <div class="card-header">
                        <h5>Recent Applications</h5>
                        <div class="card-header-left ">
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
                    <div class="card-block">
                        <div  style="height: 517px;"><%--id="statestics-chart"--%>
                            <div class="table table-responsive">
                                <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="true" RowStyle-CssClass="text-nowrap nowrap" HeaderStyle-Wrap="false" RowStyle-Wrap="false" CssClass="table table-responsive-sm " GridLines="Horizontal" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="Names" HeaderText="Name" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" />
                                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                                        <asp:BoundField DataField="YearAdmitted" HeaderText="Year Admitted" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                        <%--<div id="statestics-chart" style="height: 517px;"></div>--%>
                    </div>
                </div>
            </div>



            <div class="col-md-12 col-xl-4">
                <div class="card fb-card">
                    <div class="card-header">
                        <i class="icofont icofont-user-alt-4"></i>
                        <div class="d-inline-block">
                            <h5>New Applicants</h5>
                            <span>Male & Female</span>
                        </div>
                    </div>
                    <div class="card-block text-center">
                        <div class="row">
                            <div class="col-6 b-r-default">
                                <h2>
                                    <label id="lblTotalNewMale" runat="server"></label>
                                </h2>
                                <p class="text-muted">Male</p>
                            </div>
                            <div class="col-6">
                                <h2>
                                    <label id="lblTotalNewFemale" runat="server"></label>
                                </h2>
                                <p class="text-muted">Female</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card dribble-card">
                    <div class="card-header">
                        <i class="icofont icofont-checked"></i>
                        <div class="d-inline-block">
                            <h5>Shortlisted Applicants</h5>
                            <span>Male & Female</span>
                        </div>
                    </div>
                    <div class="card-block text-center">
                        <div class="row">
                            <div class="col-6 b-r-default">
                                <h2>
                                    <label id="lblTotalShortlistedMale" runat="server"></label>
                                </h2>
                                <p class="text-muted">Male</p>
                            </div>
                            <div class="col-6">
                                <h2>
                                    <label id="lblTotalShortlistedFemale" runat="server"></label>
                                </h2>
                                <p class="text-muted">Female</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card twitter-card">
                    <div class="card-header">
                        <i class="icofont icofont-checked"></i>
                        <div class="d-inline-block">
                            <h5>Pending Applicants</h5>
                            <span>Male & Female</span>
                        </div>
                    </div>
                    <div class="card-block text-center">
                        <div class="row">
                            <div class="col-6 b-r-default">
                                <h2>
                                    <label id="lblTotalPendingMale" runat="server"></label>
                                </h2>
                                <p class="text-muted">Male</p>
                            </div>
                            <div class="col-6">
                                <h2>
                                    <label id="lblTotalPendingFemale" runat="server"></label>
                                </h2>
                                <p class="text-muted">Female</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Email Sent End -->
            <!-- Data widget start -->
            <%--   <div class="col-md-12 col-xl-6">
                <div class="card project-task">
                    <div class="card-header">
                        <div class="card-header-left ">
                            <h5>Time spent : project &amp; task</h5>
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
                    <div class="card-block p-b-10">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Project & Task</th>
                                        <th>Time Spents</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="task-contain">
                                                <h6 class="bg-c-blue d-inline-block text-center">U</h6>
                                                <p class="d-inline-block m-l-20">UI Design</p>
                                            </div>
                                        </td>
                                        <td>
                                            <p class="d-inline-block m-r-20">4 : 36</p>
                                            <div class="progress d-inline-block">
                                                <div class="progress-bar bg-c-blue" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="task-contain">
                                                <h6 class="bg-c-pink d-inline-block text-center">R</h6>
                                                <p class="d-inline-block m-l-20">Redesign Android App</p>
                                            </div>
                                        </td>
                                        <td>
                                            <p class="d-inline-block m-r-20">4 : 36</p>
                                            <div class="progress d-inline-block">
                                                <div class="progress-bar bg-c-pink" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="task-contain">
                                                <h6 class="bg-c-yellow d-inline-block text-center">L</h6>
                                                <p class="d-inline-block m-l-20">Logo Design</p>
                                            </div>
                                        </td>
                                        <td>
                                            <p class="d-inline-block m-r-20">4 : 36</p>
                                            <div class="progress d-inline-block">
                                                <div class="progress-bar bg-c-yellow" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="task-contain">
                                                <h6 class="bg-c-green d-inline-block text-center">A</h6>
                                                <p class="d-inline-block m-l-20">Appestia landing Page</p>
                                            </div>
                                        </td>
                                        <td>
                                            <p class="d-inline-block m-r-20">4 : 36</p>
                                            <div class="progress d-inline-block">
                                                <div class="progress-bar bg-c-green" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="task-contain">
                                                <h6 class="bg-c-blue d-inline-block text-center">L</h6>
                                                <p class="d-inline-block m-l-20">Logo Design</p>
                                            </div>
                                        </td>
                                        <td>
                                            <p class="d-inline-block m-r-20">4 : 36</p>
                                            <div class="progress d-inline-block">
                                                <div class="progress-bar bg-c-blue" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12 col-xl-6">
                <div class="card add-task-card">
                    <div class="card-header">
                        <div class="card-header-left">
                            <h5>To do list</h5>
                        </div>
                        <div class="card-header-right">
                            <button class="btn btn-card btn-primary">Add task </button>
                        </div>
                    </div>
                    <div class="card-block">
                        <div class="to-do-list">
                            <div class="checkbox-fade fade-in-primary d-block">
                                <label class="check-task d-block">
                                    <input type="checkbox" value="">
                                    <span class="cr">
                                        <i class="cr-icon icofont icofont-ui-check txt-default"></i>
                                    </span>
                                    <span>
                                        <h6>Schedule Meeting with Compnes <span class="label bg-c-green m-l-10 f-10">2 week</span></h6>
                                    </span>
                                    <div class="task-card-img m-l-40">
                                        <a href="#!">
                                            <img src="../assets/images/avatar-2.jpg" data-toggle="tooltip" title="Lary Doe" alt="" class="img-40"></a>
                                        <a href="#!">
                                            <img src="../assets/images/avatar-3.jpg" data-toggle="tooltip" title="Alia" alt="" class="img-40 m-l-10"></a>
                                    </div>
                                </label>
                            </div>
                        </div>
                        <div class="to-do-list">
                            <div class="checkbox-fade fade-in-primary d-block">
                                <label class="check-task d-block">
                                    <input type="checkbox" value="">
                                    <span class="cr">
                                        <i class="cr-icon icofont icofont-ui-check txt-default"></i>
                                    </span>
                                    <span>
                                        <h6>Meeting With HOD's and borad</h6>
                                        <p class="text-muted m-l-40">23 january 2003</p>
                                    </span>
                                </label>
                            </div>
                        </div>
                        <div class="to-do-list">
                            <div class="checkbox-fade fade-in-primary d-block">
                                <label class="check-task d-block">
                                    <input type="checkbox" value="">
                                    <span class="cr">
                                        <i class="cr-icon icofont icofont-ui-check txt-default"></i>
                                    </span>
                                    <span>
                                        <h6>Create template, admin with responsive<span class="label bg-c-pink m-l-10">2 week</span></h6>
                                    </span>
                                    <div class="task-card-img m-l-40">
                                        <a href="#!">
                                            <img src="../assets/images/avatar-2.jpg" data-toggle="tooltip" title="Alia" alt="" class="img-40"></a>
                                        <a href="#!">
                                            <img src="../assets/images/avatar-3.jpg" data-toggle="tooltip" title="Suzen" alt="" class="img-40 m-l-10"></a>
                                        <a href="#!">
                                            <img src="../assets/images/avatar-4.jpg" data-toggle="tooltip" title="Lary Doe" alt="" class="img-40 m-l-10"></a>
                                        <a href="#!">
                                            <img src="../assets/images/avatar-2.jpg" data-toggle="tooltip" title="Josephin Doe" alt="" class="img-40 m-l-10"></a>
                                    </div>
                                </label>
                            </div>
                        </div>
                        <div class="to-do-list">
                            <div class="checkbox-fade fade-in-primary d-block">
                                <label class="check-task d-block">
                                    <input type="checkbox" value="">
                                    <span class="cr">
                                        <i class="cr-icon icofont icofont-ui-check txt-default"></i>
                                    </span>
                                    <span>
                                        <h6>Meeting With HOD's and borad</h6>
                                        <p class="text-muted m-l-40">23 january 2003</p>
                                    </span>
                                    <div class="task-card-img m-l-40">
                                        <a href="#!">
                                            <img src="../assets/images/avatar-2.jpg" data-toggle="tooltip" title="Lary Doe" alt="" class="img-40"></a>
                                        <a href="#!">
                                            <img src="../assets/images/avatar-3.jpg" data-toggle="tooltip" title="Alia" alt="" class="img-40 m-l-10"></a>
                                        <a href="#!">
                                            <img src="../assets/images/avatar-2.jpg" data-toggle="tooltip" title="Josephin Doe" alt="" class="img-40 m-l-10"></a>
                                    </div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
            <!-- Data widget End -->

        </div>
    </div>



    <div id="styleSelector">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
