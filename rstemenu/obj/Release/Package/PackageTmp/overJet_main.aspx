<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="overJet_main.aspx.cs" Inherits="rstemenu.overJet_main" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    
        <div class="container " style="margin-top:3%;">
   <div class="col-md-10" style="text-align:right;"> 
     
     <asp:Button ID="positive_overjet" runat="server" Text="Only Positive Overjet is Present " Width="90%"    CssClass="btn btn-primary btn-lg" OnClick="positive_overjet_Click"  style="font-size:11pt !important;" />   
        
      
   </div>
            </div>
    <br />

 <div class="container ">
   <div class="col-md-10" style="text-align:right;"> 
     
     <asp:Button ID="negative_overjet" runat="server" Text="Only Negative Overjet is Present " Width="90%"   CssClass="btn btn-primary btn-lg" OnClick="negative_overjet_Click"  style="font-size:11pt !important;"  /> 
          
         
      
   </div>
            </div>
    <br />
    <div class="container ">
   <div class="col-md-10" style="text-align:right; " > 
    
     <asp:Button ID="both_overjet" runat="server" Text="Both +ve & -ve Overjet are Present" Width="90%"   CssClass="btn btn-primary btn-lg" OnClick="both_overjet_Click"  style="font-size:10pt !important;"  /> 
        
         
     
   </div>
        <div class="col-md-2">
               <a href="helppage.aspx?id=34" > <span style="margin-left:15px; font-size:large;" class="glyphicon glyphicon-info-sign"></span> </a> 
        </div>


            </div>
</asp:Content>
