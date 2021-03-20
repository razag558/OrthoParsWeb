<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="Patient_Pars_Values.aspx.cs" Inherits="rstemenu.Patient_Pars_Values" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


     <div class="row" >
        <div class="col-xm-6" style="text-align:center;">
                    <h1 style="color:#6f7a83; text-align:center; font-family:Georgia,'Times New Roman', Times, serif;" >Completer Result  <asp:LinkButton  Font-Size="Large" Text="( help )" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" /> </h1>
        
               

        </div>

        <div class="col-xm-6" style="float:right;">
                    <div class="btn-group">

                        <asp:Button runat="server" Visible="false" ID="download_csb" CssClass="btn btn-default btn-lg" Text="CSV" OnClick="download_csv_Click" style="margin-right:5px;" />

                        <asp:Button runat="server" ID="Button1" CssClass="btn btn-default btn-lg" Text="Email" style="margin-right:5px;" OnClick="send_email_click"  />

                        <asp:Button runat="server" ID="Button2" CssClass="btn btn-default btn-lg" Text="PDF " OnClick="download_pdf_Click" style="margin-right:10px;" /> 

                    </div>
        </div>
        </div>

         <div class="row text-center">
        <asp:Label runat="server" ID="email_response_show" Width="100%" CssClass="text-danger" style="font-size:18px;" />

    </div>

           <div class="row">
         
           <div class="col-xm-6"></div>
           <div class="col-xm-6" style="float:right; margin-top:2%; margin-right:6%;"> 
     
                <asp:Panel runat="server" ID="sendemail_id" Visible="false"   >
        <asp:TextBox  runat="server" ID="txb_email" CssClass="form-control" ></asp:TextBox>
                    <div class="text-center" style="margin-top:2%;"  >
        <asp:Button runat="server" ID="btn_send_email" CssClass="btn btn-danger" Text="Send Mail" OnClick="btn_send_email_Click" />
        </div>
                        </asp:Panel>

               </div>
        </div>

    <div  class="text-left" style="width:85%; margin-left:15%;" >

        <asp:Label runat="server" Text="" Font-Size="18px" ID="pretreatment_value" ></asp:Label> 
       
        <br />
         <asp:Label runat="server" Text="" Font-Size="18px" ID="Label1" ></asp:Label>
       
        <br />
        

         <asp:Label runat="server"   Text="" Font-Size="18px" ID="Label2" ></asp:Label>
         
        <br />
         <asp:Label runat="server" Text=""  Font-Size="16px" ForeColor="Red" ID="point_result" ></asp:Label>
       
     
              <br />
        
         <asp:Label runat="server" Text=""   Font-Size="20px" ID="Label3" ></asp:Label>
         <asp:LinkButton Text="(help)" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" />
         <br />
         <asp:Label runat="server" Text=""   ForeColor="Red" Font-Size="16px" ID="Label4" ></asp:Label>
        
        <br />
         <asp:Label runat="server" Text="5.	PAR nomogram: Please visually plot P1 score on the X axis and P2 score on the Y axis of the PAR nomograph below to identify the treatment outcome based on the intersection of the visualised x and y point."   Font-Size="20px" ID="momogram" ></asp:Label>
       

        <asp:Image ImageUrl="~/images/momogram.png" runat="server" ID="momogram_image"  style="margin-top:5%;"/>
    </div>

</asp:Content>
