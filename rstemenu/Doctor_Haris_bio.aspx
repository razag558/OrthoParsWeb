<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/sadmin.Master" CodeBehind="Doctor_Haris_bio.aspx.cs" Inherits="rstemenu.Doctor_Haris_bio" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

         <div class="container">
 
        <div class="text-left" style="margin-left:10%;  ">
         <asp:Button runat="server" ID="backbutton" CssClass="btn- btn-default btn-lg" Text="Back" OnClick="backbutton_Click"  /> 
            </div>
      
        



    </div>
        
   <center>  <asp:Image runat="server" ImageUrl="images/doctor_haris.png" alt="Haris"  CssClass="img-circle" /> </center>
   <center>    <h1 style="color:#386072;"  >Doctor Haris Khan</h1> </center>
    <center>    <h3 style="color:#414445;  "> Associate Professor Orthodontist </h3> </center>
    <div style="Width:80%;margin-left:15%;margin-top:2%;"   >

    
         
             <h2 style="color:#386072;"> Achievements </h2>  
    
        
    
      
             <ul style="margin-top:2%;">
                 <li> BDS </li>
                  <li>FCPS</li>
                  <li>FFDRCSI</li>


             </ul>     
        <!-- first one  -->
        <p >

            Dr. Haris khan graduated in dentistry from Nishtar medical college in 2004 and acquired fellowship in orthodontics from College 
            of Physician and Surgeons Pakistan in 2010 and Royal College of Surgeons, Ireland in 2015. Since 2010, he is teaching at various
             positions and is presently working as Associate professor of orthodontics in Institute of dentistry CMH Lahore medical college. 
            Dr.Haris Khan has worked on many research projects in orthodontics and has authored a book on orthodontic brackets.


        </p>

      
    </div>
 
 </asp:Content>