<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="WebFormsTest.aspx.cs" Inherits="rstemenu.WebFormsTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    
 <div>  
  <label for="birthdaytime">Birthday (date and time):</label>
  <input type="datetime-local" runat="server" id="birthdaytimedate" name="birthdaytime">
 
 </div>


    

   

     
      <%--  <div class="text-left">
            <asp:Label runat="server" CssClass="text-left text-primary control-label"> Entry Date * </asp:Label>
        </div>
          --%>

</asp:Content>
