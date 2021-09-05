<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="sessions.aspx.cs" Inherits="SASystem.sessions" %>

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
            </div>
            <!-- Page-header end -->

            <!-- Page-body start -->
            <div class="page-body">
                <!-- Basic table card start -->
                <div class="card">
                    <div class="card-header">
                        <div style="display:inline-block">
                            <h5><span>
                            <asp:LinkButton ID="btnAddSession" CssClass="btn btn-secondary btn-sm" OnClick="btnAddSession_Click" runat="server">Add New Session</asp:LinkButton>
                                <asp:LinkButton ID="btnSet" CssClass="btn btn-success btn-sm"  OnClick="btnSet_Click" runat="server">Set Current Session</asp:LinkButton></span></h5>
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


                    <div class="row container">
                        <div class="col-sm-12" id="divAddsession" runat="server">
                            <!-- Basic Form Inputs card start -->
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Session Name</label>
                                <div class="col-sm-10">
                                    <input type="text" runat="server" id="txtSession" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Starts</label>
                                <div class="col-sm-10">
                                    <input type="date" runat="server" id="txtStartDate" class="form-control"
                                        placeholder="Type your title in Placeholder">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Ends</label>
                                <div class="col-sm-10">
                                    <input type="date" runat="server" id="txtEndDate" class="form-control"
                                        placeholder="Type your title in Placeholder">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label"></label>
                                <div class="col-sm-10">
                                    <asp:Button ID="btnSession" OnClick="btnSession_Click" runat="server" CssClass="btn btn-md btn-bg-c-blue" Text="Add New Session" />
                                </div>
                            </div>
                        </div>




                        <div class="col-sm-12" id="divSetSession" runat="server">
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Session</label>
                                <div class="col-sm-10">
                                    <asp:DropDownList ID="ddSession" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="SessionName" DataValueField="SessionName" AppendDataBoundItems="true">
                                        <asp:ListItem Text="-Select-" Selected="False" Value="-Select-"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SAScon %>" SelectCommand="SELECT DISTINCT [SessionName] FROM [tblSession]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <!-- Basic Form Inputs card start -->
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Status</label>
                                <div class="col-sm-10">
                                    <asp:DropDownList ID="ddstatus" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="-Select-" Selected="False" Value="-Select-"></asp:ListItem>
                                        <asp:ListItem Text="Active" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Not Active" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label"></label>
                                <div class="col-sm-10">
                                    <asp:Button ID="btnSestSession" OnClick="btnSestSession_Click" runat="server" CssClass="btn btn-md btn-success" Text="Set Session Status" />
                                </div>
                            </div>


                        </div>
                    </div>


                    <div class="card-block table-border-style">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" GridLines="None" CssClass="table" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                <Columns>
                                    <asp:TemplateField HeaderText="#">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>

                                    </asp:TemplateField>
                                    <asp:BoundField DataField="SessionName" HeaderText="SessionName" SortExpression="SessionName" />
                                    <asp:CheckBoxField DataField="status" HeaderText="status" SortExpression="status" />
                                     <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStatus" CssClass='<%#Eval("status").ToString() == "True"? "label label-success":"label label-danger" %>' Text='<%#Eval("status").ToString() == "True"? "Active":"Not Active" %>' runat="server" ></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="startDate" DataFormatString="{0:d}" HeaderText="startDate" SortExpression="startDate" />
                                    <asp:BoundField DataField="endDate" DataFormatString="{0:d}" HeaderText="endDate" SortExpression="endDate" />
                                    <asp:BoundField DataField="addedBy" HeaderText="addedBy" SortExpression="addedBy" />
                                    <asp:BoundField DataField="dateAdded" DataFormatString="{0:d}" HeaderText="dateAdded" SortExpression="dateAdded" />
                                    <asp:BoundField DataField="Status_SetBy" HeaderText="Status_SetBy" SortExpression="Status_SetBy" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SAScon %>" SelectCommand="SELECT [SessionName], [status], [startDate], [endDate], [addedBy], [dateAdded], [Status_SetBy] FROM [tblSession]"></asp:SqlDataSource>
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
