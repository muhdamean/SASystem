<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="SASystem.admin.users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="page-body">
        <div class="row">

            <br />

            <div class="col-md-12 col-xl-12">
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
                        <br />
                        <a class="text-primary" href="add-user.aspx"><strong>Add New User</strong></a>
                        <asp:Label ID="lblHide" CssClass="label-control" runat="server"></asp:Label>
                    </div>
                    <div class="card-block">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                            <ContentTemplate>
                                <div class="row">
                                    <div class="col-md-6">
                                        <asp:TextBox TextMode="Email" ID="textEmail" placeholder="enter email to seach staff" runat="server" class="form-control"></asp:TextBox>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="left">
                                            <button type="button" runat="server" id="btnCancel" onserverclick="btnCancel_ServerClick" class="btn btn-raised btn-warning btn-sm mr-1">
                                                <i class="ft-x"></i>Cancel
                                            </button>
                                            <button type="submit" id="btnSearch" runat="server" class="btn btn-raised btn-primary  btn-sm">
                                                <i class="fa fa-check-square-o"></i>Search
                                            </button>

                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblMsg" CssClass="label-control" runat="server"></asp:Label>
                                </div>
                                <div class="form-group table-responsive">
                                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" RowStyle-CssClass="text-nowrap nowrap" HeaderStyle-Wrap="false" RowStyle-Wrap="false" CssClass="table table-responsive-sm" GridLines="Horizontal" ShowHeaderWhenEmpty="true" EmptyDataText="no records found" OnRowUpdated="GridView2_RowUpdated" OnPageIndexChanging="GridView2_PageIndexChanging">
                                        <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" Visible="false" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="SN" HeaderText="#" ReadOnly="true" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="true" SortExpression="Name" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="true" SortExpression="Email" />
                                            <asp:BoundField DataField="Phone" HeaderText="Phone" ReadOnly="true" SortExpression="Phone" />
                                            <asp:BoundField DataField="RoleType" HeaderText="Role" ReadOnly="true" SortExpression="Role" />
                                            <asp:CheckBoxField DataField="LoginStatus" HeaderText="LoginStatus" SortExpression="LoginStatus" />
                                            <asp:CommandField ShowEditButton="True" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sasyCon %>" DeleteCommand="DELETE FROM [tblUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblUsers] ([Name], [Email], [Phone], [LoginStatus]) VALUES (@Name, @Email, @Phone, @LoginStatus)" SelectCommand="SELECT row_number() over( order by Name ) SN , [Id], [Name], Email, [Phone], RoleType, [LoginStatus] FROM [tblUsers] where RoleType!='Applicant'" UpdateCommand="UPDATE [tblUsers] SET [LoginStatus] = @LoginStatus WHERE [Id] = @Id" FilterExpression="Email LIKE '{0}%'">
                                        <FilterParameters>
                                            <asp:ControlParameter Name="Name" ControlID="textEmail" PropertyName="Text" />
                                        </FilterParameters>
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="Phone" Type="String" />
                                            <asp:Parameter Name="LoginStatus" Type="Boolean" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="Phone" Type="String" />
                                            <asp:Parameter Name="LoginStatus" Type="Boolean" />
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>

                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="GridView2" />
                                <asp:AsyncPostBackTrigger ControlID="btnSearch" EventName="ServerClick" />
                                <asp:AsyncPostBackTrigger ControlID="btnCancel" EventName="ServerClick" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
