<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="Crowding.aspx.cs" Inherits="rstemenu.Crowding" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container " style="margin-top:10%;">
   <div class="col-md-12" style="text-align:center;"> 
       <p>
     <asp:Button ID="btn_uper" runat="server" Text="Upper Anterior Segment" Width="60%"    CssClass="btn btn-primary btn-lg" OnClick="btn_uper_Click" />   
          <a href="helppage.aspx?id=2" > <span style="margin-left:15px; font-size:large;" class="glyphicon glyphicon-info-sign"></span> </a>
           <asp:LinkButton  Text="Reset" runat="server" style="margin-left:15px;" ID="reset_button5" OnClick="reset_button5_Click" ></asp:LinkButton>
       </p>
   </div>
 
   <div class="col-md-12" style="text-align:center;"> 
     <p>
     <asp:Button ID="btn_lower" runat="server" Text="Lower Anterior Segment" Width="60%"   CssClass="btn btn-primary btn-lg" OnClick="btn_lower_Click" /> 
             <a href="helppage.aspx?id=2" > <span style="margin-left:15px; font-size:large;" class="glyphicon glyphicon-info-sign"></span> </a>
            <asp:LinkButton  Text="Reset" runat="server" style="margin-left:15px;"   ></asp:LinkButton>
     </p>
   </div>
            </div>
</asp:Content>
