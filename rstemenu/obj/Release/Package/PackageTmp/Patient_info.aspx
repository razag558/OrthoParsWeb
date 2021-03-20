<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="Patient_info.aspx.cs" Inherits="rstemenu.Patient_info" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row" >
    <div class="form-horizontal">
        <h3 style="font-size:20px;margin-left:10%;" >Patient Information</h3>
        
      </div>
        </div>
    <div class="text-left" style="margin-left:10% ; " >
            <div class="text-left">
            <asp:Label runat="server"   CssClass="text-primary  control-label">Doctor Name * </asp:Label>
            </div>
    <div class="text-left">
                <asp:TextBox runat="server" ID="doctor_name" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" CssClass="text-danger"  ControlToValidate="doctor_name" ErrorMessage="Please Fill Doctor Name" />
              </div>
         
               <div class="text-left">
            <asp:Label runat="server"   CssClass="text-left text-primary control-label">Patient id * </asp:Label>
           </div>
         
    <div class="text-left">
     <asp:TextBox runat="server" ID="pat_id" CssClass="form-control"/>
      <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ControlToValidate="pat_id" ErrorMessage="Please Fill Patient id" />
        <asp:RegularExpressionValidator id="RegularExpressionValidator1"
            ControlToValidate="pat_id"  ValidationExpression="\d+" Display="Static" EnableClientScript="true"
            CssClass="text-danger"  ErrorMessage="Please Enter numbers only" runat="server" />  </div>
       
     <div class="text-left">
            <asp:Label runat="server"   CssClass="text-left text-primary control-label">Patient Name </asp:Label>
            </div>
         
    <div class="text-left">
                <asp:TextBox runat="server" ID="pat_name" CssClass="form-control"    />
        </div>
      
        <br />
        <div class="text-left">
            <asp:Label runat="server"  CssClass="text-left text-primary control-label">Entry Date * </asp:Label>
            </div>
         
          <div class="text-left">
                <asp:TextBox runat="server" ID="entry_date" CssClass="form-control"   TextMode="DateTime" Width="282px"   />
                 
            </div>
        <br />
       <div class="text-left">
            <asp:Label runat="server"   CssClass="text-left text-primary control-label">Gender   </asp:Label>
           </div>
         
    <div class="text-left">
                 <asp:RadioButton Text="  Male" ID="gen_male"  GroupName="gender" runat="server"  />
                 <asp:RadioButton Text="  Female" ID="gen_female"   GroupName="gender" runat="server" style="margin-left:7px;" />         
        </div>
         <div class="text-left">
            <asp:Label runat="server"   CssClass="text-left text-primary control-label">Are there any impacted teeth?   </asp:Label>
           </div>
         
    <div class="text-left">
                 <asp:RadioButton  Text="  Yes" ID="impct_yes"  GroupName="impct_teeth" runat="server" />
                 <asp:RadioButton Text="   No" ID="impct_no"   GroupName="impct_teeth" runat="server" style="margin-left:7px;" />  
        </div>
         <div class="text-left">
            <asp:Label runat="server"   CssClass="text-left text-primary control-label">Are there any missing teeth?   </asp:Label>
           </div>
    <div class="text-left">
                 <asp:RadioButton Text="  Yes" ID="missing_yes"  GroupName="missing" runat="server" />
                 <asp:RadioButton Text="  No" ID="missing_no"   GroupName="missing" runat="server" style="margin-left:7px;" />         
        </div>
        <div class="text-left">
            <asp:Label runat="server"   CssClass="text-left text-primary control-label">Did the patient have any teeth extracted?   </asp:Label>
           </div>
          <div class="text-left">
                 <asp:RadioButton Text="  Yes" ID="extracted_yes"  GroupName="extracted" runat="server" />
                 <asp:RadioButton Text="  No" ID="extracted_no"   GroupName="extracted" runat="server" style="margin-left:7px;" />      
        </div>
            <div class="text-left">
            <asp:Label runat="server"   CssClass="text-left text-primary control-label">Is the patient being providing with a prosthetic replacement for any of the spaces?   </asp:Label>
           </div>
    <div class="text-left">
                 <asp:RadioButton Text="  Yes" ID="replacement_yes"  GroupName="replacement" runat="server" />
                 <asp:RadioButton Text="  No" ID="replacement_no"   GroupName="replacement" runat="server" style="margin-left:7px;" />        
        </div>
         <div class="text-left">
            <asp:Label runat="server"   CssClass="text-left text-primary control-label">Has the patient had any restorative treatment affecting the malocclusion?   </asp:Label>
           </div>
         
    <div class="text-left">
                 <asp:RadioButton Text="  Yes" ID="restorative_yes"  GroupName="restorative" runat="server" />
                 <asp:RadioButton Text="  No" ID="restorative_no"   GroupName="restorative" runat="server" style="margin-left:7px;" />
 </div>
     
            <div class="col-sm-10 text-left" style="margin-top:13px;margin-left:0%;" >
                <asp:Button runat="server" id="btn_next" Width="100px" Text="Next" CssClass="btn btn-primary" OnClick="btn_next_Click"  />
                </div>
              
  </div>
    

 
</asp:Content>
