﻿<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="LowerCrowding_Types.aspx.cs" Inherits="rstemenu.LowerCrowding_Types" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container " style="margin-top:10%;">
   <div class="col-md-12" style="text-align:center;"> 
       <p>
     <asp:Button ID="btn_uper" runat="server" Text="Permanent Dentition" Width="60%"    CssClass="btn btn-primary btn-lg" OnClick="btn_uper_Click"   />   
          
   </div>
 
   <div class="col-md-12" style="text-align:center;"> 
     <p>
     <asp:Button ID="btn_lower" runat="server" Text="Mixed Dentition" Width="60%"   CssClass="btn btn-primary btn-lg" OnClick="btn_lower_Click"  /> 
            
         
     </p>
   </div>
            </div>
</asp:Content>
