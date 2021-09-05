<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="screening.aspx.cs" Inherits="SASystem.screenings" EnableEventValidation="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server" ></asp:ScriptManager>
    
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

                    <div class="card-block table-border-style">
                        <div class="table-responsive">

                            <asp:Repeater ID="Repeater1" ClientIDMode="Static" runat="server">
                                <ItemTemplate>
                                    <div class="badge-box" style="margin: 20px">
                                        <div class="sub-title" style="font-weight: bolder">
                                            <strong>
                                                <asp:Label ID="lblfullname" runat="server" Text='<%#Eval("fullname")%>'></asp:Label></strong>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-md-8" style="font-size: 16px">
                                                        <div class="d-inline">
                                                            <h5><strong>School:</strong> &nbsp <%#Eval("schoolName")%></h5>
                                                            <h5><strong>Department:</strong> &nbsp <%#Eval("Course")%></h5>
                                                            <h5><strong>State of Origin:</strong> &nbsp <%#Eval("state")%></h5>
                                                            <h5><strong>L G A:</strong> &nbsp <%#Eval("LGA")%></h5>
                                                            <h5><strong>Year of Admission:</strong> &nbsp <%#Eval("YearAdmitted")%></h5>
                                                            <h5><strong>Address:</strong> &nbsp <%#Eval("address")%></h5>
                                                            <%--<li>schoolName: <span>
                                                            <asp:Label ID="lblemail" runat="server" Text='<%#Eval("Email") %>'></asp:Label></span></li>--%>
                                                        </div>

                                                        <div>
                                                            <label class="badge badge-primary badge-lg">Level:&nbsp<%#Eval("phone")%></label>&nbsp<label class="badge badge-warning badge-lg">CGPA: &nbsp 
                                                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("CGPA") %>'></asp:Label></label>
                                                            <label class="badge badge-secondary badge-lg">Phone Number: &nbsp <%#Eval("phone")%> </label>
                                                            <label class="badge badge-success badge-lg">
                                                                Email: &nbsp 
                                                                <asp:Label ID="lblemail" runat="server" Text='<%#Eval("Email") %>'></asp:Label></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <asp:Image ID="Image2" ImageUrl='<%#Eval("AdmissionLetter") %>' Width="100px" Height="100px" runat="server" />
                                                            </div>
                                                            <div class="col-md-4">
                                                                <asp:Image ID="Image3" ImageUrl='<%#Eval("PastSessionResult") %>' Width="100px" Height="100px" runat="server" />
                                                            </div>
                                                            <div class="col-md-4">
                                                                <asp:Image ID="Image1" ImageUrl='<%#Eval("AdmissionLetter") %>' runat="server" Width="100px" Height="100px" />
                                                            </div>
                                                        </div>

                                                        <asp:Button ID="Button1" runat="server" Text="View Documents" CssClass="btn btn-secondary btn-sm" OnClick="Button1_Click" Style="margin-top: 10px" Width="100%" />

                                                        <div style="margin-top: 40px">
                                                            <p>Application Status</p>
                                                            <asp:Label ID="Label2" CssClass='<%#Eval("ApplicationStatus").ToString() == "Pending"? "badge badge-warning badge-lg": Eval("ApplicationStatus").ToString() == "Successful"? "badge badge-success badge-lg" :"badge badge-danger badge-lg" %>' runat="server" Text='<%#Eval("ApplicationStatus") %>'></asp:Label></label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <asp:Button ID="btnApprove" runat="server" CssClass="btn btn-success btn-md" Text="Approve Application" OnClick="btnApprove_Click" />&nbsp&nbsp&nbsp&nbsp
                                        <asp:Button ID="btnDeny" runat="server" CssClass="btn btn-danger btn-sm" Text="Deny Application" OnClick="btnDeny_Click" OnClientClick="return confirm('Deny Application?');" />
                                        <hr />
                                        <br />
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:Repeater ID="rptPaging" runat="server" OnItemCommand="rptPaging_ItemCommand">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkPage"
                                        Style="padding: 8px; margin: 2px; background: #B34C00; border: solid 1px #666; color: #fff; font-weight: bold"
                                        CommandName="Page" CommandArgument="<%# Container.DataItem %>"
                                        runat="server" Font-Bold="True"><%# Container.DataItem %>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main-body end -->

        <div id="styleSelector">
        </div>
    </div>

    <div class="modal fade modal-icon" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" id="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content" style="width: 800px; text-align: center; margin-left: -150px;">
                <div class="modal-header">
                    <h4 class="modal-title"><i class="icon icon-stat"></i>
                        <asp:Label ID="lblMfullname" runat="server" Style="text-transform: uppercase" Text=""></asp:Label></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <asp:Image ID="Image4" runat="server" Width="700px" />
                            </div>
                            <div class="form-group">
                                <asp:Image ID="Image5" runat="server" Width="700px" />
                            </div>
                            <div class="form-group">
                                <asp:Image ID="Image6" runat="server" Width="700px" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>

            </div>
        </div>
    </div>


    <!-- Required Jquery -->
    <script type="text/javascript" src="assets/js/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery-ui/jquery-ui.min.js"></script>
    <script type="text/javascript" src="assets/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap/js/bootstrap.min.js"></script>
   
    <!-- Custom js -->
    <script type="text/javascript" src="assets/pages/icon-modal.js"></script>
    


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
