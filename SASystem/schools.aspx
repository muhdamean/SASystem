<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="schools.aspx.cs" Inherits="SASystem.schools" %>
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
                                <h4>Chose Category to Commence Screening</h4>
                                <span>Select to view schools under states</span>
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
                                <li class="breadcrumb-item"><a href="#!">Schools</a>
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
                            <asp:GridView ID="GridView1" GridLines="None" CssClass="table" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" RowStyle-Wrap="true" Font-Size="14px" >
                                <Columns>
                                    <asp:TemplateField HeaderText="#">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:HyperLinkField DataNavigateUrlFields="SchoolCategory,schoolState" DataTextField="SchoolCategory" DataNavigateUrlFormatString="screening.aspx?sc={0}&st={1}" HeaderText="School Category" />
                                    <asp:BoundField DataField="schoolState" HeaderText="State" SortExpression="schoolState" />
                                    <asp:BoundField DataField="schoolLGA" HeaderText="L G A" SortExpression="schoolLGA" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sasyCon %>" SelectCommand="SELECT [tblApplicationDetails].[schoolState],[tblApplicationDetails].[schoolLGA], [tblApplicationDetails].[SchoolCategory], tblSession.SessionName  FROM [tblApplicationDetails] inner join tblSession on tblSession.SessionName = tblApplicationDetails.AcademicSession where tblSession.status='1'
"></asp:SqlDataSource>
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
