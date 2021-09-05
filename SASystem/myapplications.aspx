<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myapplications.aspx.cs" Inherits="SASystem.myapplications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div>
                    <h3>My Applications</h3>
                    <br />
                </div>
                <div>
                    <div class="table table-responsive">
                        <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="true" RowStyle-CssClass="text-nowrap nowrap" HeaderStyle-Wrap="false" RowStyle-Wrap="false" CssClass="table table-responsive-sm " GridLines="Horizontal" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="SN" HeaderText="#" />
                                <asp:HyperLinkField HeaderText="Email" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="application-details.aspx?i={0}" DataTextField="Email" />
                                <asp:BoundField DataField="YearAdmitted" HeaderText="Year Admitted" />
                                <asp:BoundField DataField="ApplicationSession" HeaderText="Application Session" />
                                <asp:BoundField DataField="ApplicationStatus" HeaderText="Application Status" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
