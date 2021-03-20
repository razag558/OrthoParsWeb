<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="OverBite_main.aspx.cs" Inherits="rstemenu.OverBite_main" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

      <div class="container " style="margin-top:3%;">
   <div class="col-md-10" style="text-align:right;"> 
        
     <asp:Button ID="positive_overbite" runat="server" Text="Only Positive Overbite is Present " Width="90%"     CssClass="btn btn-primary btn-lg" OnClick="positive_overjet_Click"  style="font-size:11pt !important;"  />   
       
      
   </div>
            </div>
    <br />
 <div class="container ">
   <div class="col-md-10" style="text-align:right;"> 
     
     <asp:Button ID="negative_overbite" runat="server" Text="Only Negative Overbite is Present " Width="90%"   CssClass="btn btn-primary btn-lg" OnClick="negative_overjet_Click" style="font-size:11pt !important;"    /> 
           
         
     
   </div>
            </div>
     <br />
    <div class="container ">
   <div class="col-md-10" style="text-align:right;  "> 
     
     <asp:Button ID="both_overbite" runat="server" Text="Both +ve & -ve Overbite are Present  " Width="90%"    CssClass="btn btn-primary btn-lg" OnClick="both_overjet_Click"  style="font-size:10pt !important;"   /> 
          
         
     
   </div>
        <div class="col-md-2">
             <a href="helppage.aspx?id=56" > <span style="margin-left:15px; font-size:large;" class="glyphicon glyphicon-info-sign"></span> </a> 
        </div>
            </div>
   
</asp:Content>
