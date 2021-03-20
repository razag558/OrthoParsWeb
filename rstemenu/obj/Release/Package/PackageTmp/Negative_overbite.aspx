<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="Negative_overbite.aspx.cs" Inherits="rstemenu.Negative_overbite" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

      <div   class="well" style="text-align:center;">
   
          <asp:Label  Text="Negative Overbite"   runat="server"  Style=" width:100%;  color:blue;  font-size:large;  " />
       
      </div>
              
     
       <div class="container" >

        <div class="row  " >
                             <div class="col-sm-4  " >
                                             
                                                                  <asp:RadioButton ID="overbite_negative_s0" Text="Score 0" runat="server" GroupName="overbite_1" /> 
                                                  
                                                                  <a href="helppage.aspx?id=40&heading=overbitneg0"> <span class="glyphicon glyphicon-info-sign"></span> </a>
                                          </div>
                                  

                             <div class="col-sm-4   " >
                                          
                                                         <asp:RadioButton ID="overbite_negative_s1" Text="Score 1" runat="server"  GroupName="overbite_1"/> 

                                                  
                                                           <a href="helppage.aspx?id=41&heading=overbitneg1" > <span class="glyphicon glyphicon-info-sign"></span> </a>
                                                     </div>
              <div class="col-sm-4   " >
                                          
                                                         <asp:RadioButton ID="overbite_negative_s2" Text="Score 2" runat="server" GroupName="overbite_1" /> 

                                                  
                                                           <a href="helppage.aspx?id=42&heading=overbitneg2" > <span class="glyphicon glyphicon-info-sign"></span> </a>
                                                     </div>
           

            
             </div>

             <div class="row   " >

            <div class="col-sm-4   " >
                                          
                                                         <asp:RadioButton ID="overbite_negative_s3" Text="Score 3" runat="server" GroupName="overbite_1" /> 

                                                  
                                                           <a href="helppage.aspx?id=43&heading=overbitneg3" > <span class="glyphicon glyphicon-info-sign"></span> </a>
                                                     </div>
                 <div class="col-sm-4   " >
                                          
                                                         <asp:RadioButton ID="overbite_negative_s4" Text="Score 4" runat="server" GroupName="overbite_1" /> 

                                                  
                                                           <a href="helppage.aspx?id=44&heading=overbitneg4" > <span class="glyphicon glyphicon-info-sign"></span> </a>
                                                     </div>

            






                                            </div>
         


        </div>
   

           <div class="container" style="text-align:end; width:92%; margin-top:15px;" > 
                <asp:Label runat="server" ID="showing_error" Visible="false" Width="100%" CssClass="text-danger" Text="Please Complete all domains to Continue" style="font-size:18px;" />

    
            <asp:Button class="btn btn-primary" Text="SUBMIT" ID="submit_lower_right" runat="server" OnClick="submit_lower_right_Click"  />
         </div>
</asp:Content>

 
