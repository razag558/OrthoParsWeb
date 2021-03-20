  <%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="Result_show.aspx.cs" Inherits="rstemenu.Result_show" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
     <script src="Charts/jquery/Chart.min.js" type="text/javascript"></script>
     <script src="Charts/jquery/utils.js" type="text/javascript"></script>
<script src="Charts/AverageGraphs.js" type="text/javascript"></script>
<script src="Charts/Graphs.js" type="text/javascript"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="row" >
        <div class="col-xm-4" style="text-align:center;">
    <h1 style="color:#6f7a83; text-align:center; font-family:Georgia,'Times New Roman', Times, serif;" >Complete Result  <asp:LinkButton  Font-Size="Large" Text="( help )" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" /> </h1>
        
               

        </div>
        <div class="row text-center">
        <asp:Label runat="server" ID="email_response_show" Width="100%" CssClass="text-danger" style="font-size:18px;" />

    </div>

        <div  style="float:right; margin-right:10%;">
                    <div class="btn-group">

                        <asp:Button runat="server" ID="download_csb" Visible="false" CssClass="btn btn-default btn-lg" Text="CSV "   style="margin-right:5px;" OnClick="download_csv_Click"   />
                      
                        <asp:Button runat="server" ID="Button1" Width="100px" CssClass="btn btn-default btn-lg" Text="Email" OnClick="Button1_Click"  style="margin-right:5px;"  />
                       
                        <asp:Button runat="server" ID="Button2" CssClass="btn btn-default btn-lg" Text="PDF " Visible="false" style="margin-right:5px;" OnClick="download_pdf_Click"   /> 

                        <asp:Button runat="server" ID="Back_record" CssClass="btn btn-default btn-lg" Text="View Patients" Visible="true" style="margin-right:5px;" OnClick="View_patients"   /> 

                    </div>
        </div>
        </div>

       <div class="row">
         
           <div class="col-xm-6"></div>
           <div class="col-xm-6" style="float:right; margin-top:2%; margin-right:6%;"> 
     
                <asp:Panel runat="server" ID="sendid" Visible="false"   >
        <asp:TextBox  runat="server" ID="txb_email" CssClass="form-control" ></asp:TextBox>
                    <div class="text-center" style="margin-top:2%;"  >
        <asp:Button runat="server" ID="btn_send_email" CssClass="btn btn-danger" Text="Send Email " OnClick="btn_send_email_Click" />
        </div>
                        </asp:Panel>

               </div>
        </div>

      <div style="display:none;">
        <asp:Label runat="server"  Font-Size="18px" ID="lbl_prvalue"  ></asp:Label> 
        <asp:Label runat="server"  Font-Size="18px" ID="lbl_povalue" ></asp:Label> 
            </div>
      

    <div  class="text-left" style="width:85%; " >

        <asp:Label runat="server" Text="" Font-Size="18px" ID="pretreatment_value" ></asp:Label> 
       
        <br />
         <asp:Label runat="server" Text="" Font-Size="18px" ID="Label1" ></asp:Label>
       
        <br />
        

         <asp:Label runat="server"   Text="" Font-Size="18px" ID="Label2" ></asp:Label>
          
        <br />
         <asp:Label runat="server" Text=""  Font-Size="16px" ForeColor="Red" ID="point_result" ></asp:Label>
       
     
              <br />
        
         <asp:Label runat="server" Text=""   Font-Size="18px" ID="Label3" ></asp:Label>
         <asp:LinkButton Text="(help)" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" />
         <br />
         <asp:Label runat="server" Text=""   ForeColor="Red" Font-Size="16px" ID="Label4" ></asp:Label>
        
        <br />
         <asp:Label runat="server" Text="5.	PAR nomogram: Please visually plot P1 score on the X axis and P2 score on the Y axis of the PAR nomograph below to identify the treatment outcome based on the intersection of the visualised x and y point."   Font-Size="18px" ID="momogram" ></asp:Label>
       <br />

        <div style="width:100%;">    
         
       
        <asp:Image ImageUrl="~/images/momogram.png" runat="server" ID="momogram_image" width="100%" style="margin-top:5%;"/>
        <br /><br />   
   </div>

            <!--
        <canvas id="canvas" width="300" height="300" title="PAR Nomogram" ></canvas>

            -->
<script>
		var MONTHS = ['0', '10', '20', '30', '40', '50', '60', '70', '80', '90', '100', '110'];
		var config = {
			type: 'line',
			data: {
			    labels: ['0', '10', '20', '30', '40', '50', '60', '70', '80', '90', '100', '110'],
				datasets: [{
					label: 'Pre-treatment',
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [
						randomScalingFactor0(),
						randomScalingFactor1()
						
					],
					fill: false,
				}, {
					label: 'Post-treatment',
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [
						randomScalingFactor0(),
						randomScalingFactor2()
						
					],
				}]
			},
			options: {
				responsive: true,
				title: {
					display: true,
					text: 'Easy PAR'
				},
				tooltips: {
					mode: 'index',
					intersect: false,
				},
				hover: {
					mode: 'nearest',
					intersect: true
				},
				scales: {
					xAxes: [{
						display: true,
						scaleLabel: {
							display: true,
							labelString: ' '
						}
					}],
					yAxes: [{
						display: true,
						scaleLabel: {
							display: true,
							labelString: ' '
						}
					}]
				}
			}
		};

		window.onload = function() {
			var ctx = document.getElementById('canvas').getContext('2d');
			window.myLine = new Chart(ctx, config);
		};

		document.getElementById('randomizeData').addEventListener('click', function() {
			config.data.datasets.forEach(function(dataset) {
				dataset.data = dataset.data.map(function() {
					return randomScalingFactor();
				});

			});

			window.myLine.update();
		});

		var colorNames = Object.keys(window.chartColors);
		document.getElementById('addDataset').addEventListener('click', function() {
			var colorName = colorNames[config.data.datasets.length % colorNames.length];
			var newColor = window.chartColors[colorName];
			var newDataset = {
				label: 'Dataset ' + config.data.datasets.length,
				backgroundColor: newColor,
				borderColor: newColor,
				data: [],
				fill: false
			};

			for (var index = 0; index < config.data.labels.length; ++index) {
				newDataset.data.push(randomScalingFactor());
			}

			config.data.datasets.push(newDataset);
			window.myLine.update();
		});

		document.getElementById('addData').addEventListener('click', function() {
			if (config.data.datasets.length > 0) {
				var month = MONTHS[config.data.labels.length % MONTHS.length];
				config.data.labels.push(month);

				config.data.datasets.forEach(function(dataset) {
					dataset.data.push(randomScalingFactor());
				});

				window.myLine.update();
			}
		});

		document.getElementById('removeDataset').addEventListener('click', function() {
			config.data.datasets.splice(0, 1);
			window.myLine.update();
		});

		document.getElementById('removeData').addEventListener('click', function() {
			config.data.labels.splice(-1, 1); // remove the label first

			config.data.datasets.forEach(function(dataset) {
				dataset.data.pop();
			});

			window.myLine.update();
		});
	</script>
    
        
    </div>
</asp:Content>
 