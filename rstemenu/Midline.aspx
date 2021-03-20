<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="Midline.aspx.cs" Inherits="rstemenu.Midline" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div  class="container "  style="width:100%;    margin-top:3%;    "  >
         <div   class="well" style="text-align:center;">
   
          <asp:Label  Text="Midline"   runat="server"  Style=" width:100%;  color:blue;  font-size:large;  " />
       
      </div>

        
    <div class="container" >

        <div class="row  " >
                             <div class="col-sm-4  " >
                                             
                                                                  <asp:RadioButton ID="midline_s0" Text="Score 0" runat="server" GroupName="midline_1" /> 
                                                  
                                                                  <a href="helppage.aspx?id=46&heading=mid0"> <span  style="margin-left:15px;" class="glyphicon glyphicon-info-sign"></span> </a>
                                          </div>
                                  

                             <div class="col-sm-4   " >
                                          
                                                         <asp:RadioButton ID="midline_s1" Text="Score 1" runat="server"  GroupName="midline_1"/> 

                                                  
                                                           <a href="helppage.aspx?id=47&heading=mid1" > <span style="margin-left:15px;" class="glyphicon glyphicon-info-sign"></span> </a>
                                                     </div>
           

            <div class="col-sm-4   " >
                                          
                                                         <asp:RadioButton ID="midline_s2" Text="Score 2" runat="server" GroupName="midline_1" /> 

                                                  
                                                           <a href="helppage.aspx?id=48&heading=mid2" > <span style="margin-left:15px;" class="glyphicon glyphicon-info-sign"></span> </a>
                                                     </div>
             </div>

            
         

         
         


        </div>

        <div class="container" style="text-align:end; margin-top:15px; width:92%;" > 

             <asp:Label runat="server" ID="showing_error" Visible="false" Width="100%" CssClass="text-danger" Text="Please Complete all domains to Continue" style="font-size:18px;" />

    
            <asp:Button class="btn btn-primary" Text="SUBMIT" ID="submit_lower_right" runat="server" OnClick="submit_lower_right_Click"   />
         </div>

         </div>

</asp:Content>
