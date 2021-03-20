<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="alloptions.aspx.cs" Inherits="rstemenu.alloptions" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
     <div class="container" style="height:50px; margin-top:10%;">

    <asp:Label Text="" runat="server" ID="label_home_option"  Font-Size="18px" style="color:black; float:right;"></asp:Label>
         
        </div>

            
      <div  class="container "  style="width:92%;">
  
   <div class="col-md-12" style="text-align:center;"> 
       <p>
                <asp:Button ID="btn_crowding" runat="server" Text="Anterior segment" Width="60%"  CssClass="btn btn-primary btn-lg " OnClick="btn_crowding_Click">   </asp:Button>   
       
                  <a href="helppage.aspx?id=1&heading=firstbutton" > <span style="margin-left:15px; font-size:large;"  class="glyphicon glyphicon-info-sign"></span> </a>
                
                   <asp:LinkButton  Text="Reset" runat="server" style="margin-left:15px;" ID="reset_button" OnClick="reset_button_Click" ></asp:LinkButton>
       </p>
   </div>

 

 <div class="col-md-12" style="text-align:center;"> 
     <p>
     <asp:Button ID="btn_occlusion" runat="server" Text="Buccal occlusion" Width="60%"   CssClass="btn btn-primary btn-lg" OnClick="btn_occlusion_Click" /> 
            <a href="helppage.aspx?id=11&heading=secondbutton" > <span style="margin-left:15px; font-size:large;" class="glyphicon glyphicon-info-sign"></span> </a>
         <asp:LinkButton  Text="Reset" runat="server" style="margin-left:15px;" ID="reset_button2" OnClick="reset_button2_Click" ></asp:LinkButton>
     </p>
   </div>
      

 <div class="col-md-12" style="text-align:center;"> 
     <p>
     <asp:Button ID="btn_aoccusion" runat="server" Text="Anterior occlusion (Overjet)" Width="60%"   CssClass="btn btn-primary btn-lg" OnClick="btn_aoccusion_Click" /> 
           <a href="helppage.aspx?id=22&heading=thirdbutton" > <span style="margin-left:15px; font-size:large;" class="glyphicon glyphicon-info-sign"></span> </a>
         <asp:LinkButton  Text="Reset" runat="server" style="margin-left:15px;" ID="reset_button3" OnClick="reset_button3_Click" ></asp:LinkButton>
     </p>
   </div>
      

 <div class="col-md-12" style="text-align:center;"> 
     <p>
     <asp:Button ID="btn_boccusion" runat="server" Text="Anterior occlusion (Overbite)" Width="60%"   CssClass="btn btn-primary btn-lg" OnClick="btn_boccusion_Click" /> 
           <a href="helppage.aspx?id=35&heading=fourthbutton" > <span style="margin-left:15px; font-size:large;" class="glyphicon glyphicon-info-sign"></span> </a>
         <asp:LinkButton  Text="Reset" runat="server" style="margin-left:15px;" ID="reset_button4" OnClick="reset_button4_Click" ></asp:LinkButton>
     </p>
   </div>
     

 <div class="col-md-12" style="text-align:center;"> 
     <p>
     <asp:Button ID="btn_miding" runat="server" Text="Midline" Width="60%"  CssClass="btn btn-primary btn-lg" OnClick="btn_miding_Click" /> 
          <a href="helppage.aspx?id=45&heading=fifthbutton" > <span style="margin-left:15px; font-size:large;" class="glyphicon glyphicon-info-sign"></span> </a>
         <asp:LinkButton  Text="Reset" runat="server" style="margin-left:15px;" ID="reset_button5" OnClick="reset_button5_Click" ></asp:LinkButton>
     </p>
   </div>

           <div class="col-md-12" style=" margin-top:2%;"  > 
     
          
        <asp:Label runat="server" Visible="false" ID="response_label" Width="85%" CssClass="text-danger text-right"   Text="Please Complete all domains to Continue" />
<br />
               <br />
              
   
     <asp:Button ID="Submit" runat="server" Text="Submit"     CssClass="btn btn-default btn-lg col-md-3 col-sm-5 col-xm-6" style="margin-left:60%;" OnClick="Submit_Click"   /> 
         
    
   </div>
          
  </div>

</asp:Content>
