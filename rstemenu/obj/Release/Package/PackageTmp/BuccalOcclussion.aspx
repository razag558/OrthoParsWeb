<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="BuccalOcclussion.aspx.cs" Inherits="rstemenu.BuccalOcclussion1" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     

        <div class="container " style="margin-top:10%;">
   <div class="col-md-12" style="text-align:center;"> 
       <p>
     <asp:Button ID="btn_uper_occlusion" runat="server" Text="Right buccal occlusion " Width="60%"    CssClass="btn btn-primary btn-lg" OnClick="btn_uper_occlusion_Click"  />   
        <asp:LinkButton  Text="Reset" runat="server" style="margin-left:15px;" ID="reset_button5" OnClick="reset_button5_Click" ></asp:LinkButton>
       </p>
   </div>
            </div>

 <div class="container ">
   <div class="col-md-12" style="text-align:center;"> 
     <p>
     <asp:Button ID="btn_lower_occlusion" runat="server" Text="Left buccal occlusion" Width="60%"   CssClass="btn btn-primary btn-lg" OnClick="btn_lower_occlusion_Click"   /> 
            <asp:LinkButton  Text="Reset" runat="server" style="margin-left:15px;" ID="LinkButton1"  ></asp:LinkButton>
         
     </p>
   </div>
    </div>
</asp:Content>
