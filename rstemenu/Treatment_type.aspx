<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="Treatment_type.aspx.cs" Inherits="rstemenu.Treatment_type" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
     <div class="container text-right" style="margin-top:10%;" > 
        <div class="jumbotron text-right" style="background-color:transparent;"   >  
              <div  class="container"  >
     <asp:Label runat="server" ID="show_error" Visible="false" Text="Please Complete all domains to Continue" CssClass="text-danger text-right" Width="100%" ></asp:Label>
 </div>
       <asp:Button runat="server" ID="Button1"  CssClass="btn btn-danger btn-lg" Text="Show Result" OnClick="result_show_Click"  /> 
     <div class="panel panel-primary text-center" style="margin-top:10px;"  >
  <div class="panel-heading text-danger">PAR Values</div>
  <div class="panel-body"> 
      <asp:Label runat="server" Text="Pre-Treatment  Value (P1) = 0" ID="lbl_pre_value_p1"  CssClass="text-danger"></asp:Label> <br />
      <asp:Label runat="server" Text="Post-Treatment Value (P2) = 0" ID="lbl_pre_value_p2" CssClass="text-danger" ></asp:Label>
</div>
         </div>
</div>
       </div>

      <div class="text-center" runat="server"   style="  margin-top:10%; " >
       <div class="row">
           
   <div class="col-md-12"  > 
    <p>
     <asp:Button ID="btn_pretreatment" runat="server" Text="Pre-treatment" Width="60%"    CssClass="btn btn-primary btn-lg" OnClick="btn_pretreatment_Click" />   
        <asp:LinkButton  Text="Reset" runat="server" style="margin-left:15px;" ID="reset_button" OnClick="reset_button_Click"   ></asp:LinkButton>
            
                             </p>              </div>
         
   </div>
    
    <div class="row ">
         
   <div class="col-md-12" > 
    <p>
     <asp:Button ID="btn_posttreatment" runat="server" Text="Post-treatment" Width="60%"  CssClass="btn btn-primary btn-lg" OnClick="btn_posttreatment_Click" /> 
        <asp:LinkButton  Text="Reset" runat="server" style="margin-left:15px;" ID="LinkButton1" OnClick="LinkButton1_Click"   ></asp:LinkButton>
              
         </p>                               
           </div>
   
   </div>
       </div>
 
</asp:Content>
