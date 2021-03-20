<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="Updating_Patient_info.aspx.cs" Inherits="rstemenu.Updating_Patient_info" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-horizontal">
            <link href="BootstrapeDatePicker/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="BootstrapeDatePicker/bootstrap/bootstrap-datetimepicker.min.css" rel="stylesheet" />
        <h1 style="font-size: 20px; margin-left: 10%;">Patient Information</h1>

    </div>
    <div style="margin-left: 10%;">
        <div class="col-md-6">
            <div class="col-md-12">
                <label class="control-label">Doctor Name *</label>

                <div class="text-left">
                    <asp:TextBox runat="server" ID="doctor_name" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ControlToValidate="doctor_name" ErrorMessage="Please Fill Doctor Name" />
                </div>
            </div>

            <div class="col-md-12">
                <label class="control-label">Patient id * </label>
                <br />
                <asp:TextBox runat="server" ID="pat_id" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" CssClass="text-primary" ControlToValidate="pat_id" ErrorMessage="Please Fill Patient id " />
            </div>


            <div class="col-md-12">
                <label class="control-label">Patient Name *</label>
                <asp:TextBox runat="server" ID="pat_name" CssClass="form-control" />
            </div>
            <br />

            <div>
                <label for="dtp_input1" class="col-md-12 control-label">DateTime Picking</label>
                <div class="input-group date form_datetime col-md-7" data-date-format="dd/mm/yyyy HH:ii:ss p" data-link-field="dtp_input1">
                    <input class="form-control" size="16" type="text" value="" id="patientcheckdate" runat="server" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
                <input type="hidden" id="dtp_input1" value="" /><br />
            </div>
            <br />
            <br />
            <div class="col-md-12">
                <label>Gender * </label>
                <br />
                <asp:RadioButton Text="  Male" ID="gen_male" GroupName="gender" runat="server" />
                <asp:RadioButton Text="  Female" ID="gen_female" GroupName="gender" runat="server" Style="margin-left: 7px;" />
            </div>

            <div class="col-md-12">
                <label class="control-label">Are there any impacted teeth?   </label>
                <br />
                <asp:RadioButton Text="  Yes" ID="impct_yes" GroupName="impct_teeth" runat="server" />
                <asp:RadioButton Text="   No" ID="impct_no" GroupName="impct_teeth" runat="server" Style="margin-left: 7px;" />
            </div>

            <div class="col-md-12">
                <label class="control-label">Are there any missing teeth?   </label>
                <br />
                <asp:RadioButton Text="  Yes" ID="missing_yes" GroupName="missing" runat="server" />
                <asp:RadioButton Text="  No" ID="missing_no" GroupName="missing" runat="server" Style="margin-left: 7px;" />
            </div>


            <div class="col-md-12">
                <label class="control-label">Did the patient have any teeth extracted?   </label>
                <br />
                <asp:RadioButton Text="  Yes" ID="extracted_yes" GroupName="extracted" runat="server" />
                <asp:RadioButton Text="  No" ID="extracted_no" GroupName="extracted" runat="server" Style="margin-left: 7px;" />
            </div>

            <div class="col-md-12">
                <label class="control-label">Is the patient being providing with a prosthetic replacement for any of the spaces?   </label>
                <br />
                <asp:RadioButton Text="  Yes" ID="replacement_yes" GroupName="replacement" runat="server" />
                <asp:RadioButton Text="  No" ID="replacement_no" GroupName="replacement" runat="server" Style="margin-left: 7px;" />
            </div>

            <div class="col-md-12">
                <label class="control-label">Has the patient had any restorative treatment affecting the malocclusion?   </label>
                <br />
                <asp:RadioButton Text="  Yes" ID="restorative_yes" GroupName="restorative" runat="server" />
                <asp:RadioButton Text="  No" ID="restorative_no" GroupName="restorative" runat="server" Style="margin-left: 7px;" />
            </div>

            <div class="col-sm-10 text-left" style="margin-top: 7px;">
                <asp:Button runat="server" ID="btn_update" Width="100px" Text="Update" CssClass="btn btn-primary" OnClick="btn_update_Click" />
            </div>

        </div>
        <script type="text/javascript" src="BootstrapeDatePicker/jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="BootstrapeDatePicker/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="BootstrapeDatePicker/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="BootstrapeDatePicker/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
    <script type="text/javascript">
        $('.form_datetime').datetimepicker({
            //language:  'fr',
            weekStart: 1,
            todayBtn: 1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            forceParse: 0,
            showMeridian: 1
        });
    </script>


    </div>
</asp:Content>
