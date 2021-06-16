<%@ Page Title="" Language="C#" MasterPageFile="~/sadmin.Master" AutoEventWireup="true" CodeBehind="Patient_Pars_Values.aspx.cs" Inherits="rstemenu.Patient_Pars_Values" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/html2canvas.min.js"></script>
    <script type="text/javascript">

        function ConvertToImage(btnExport) {
            html2canvas(document.getElementById('<% =contentcontrol.ClientID %>')).then(function (canvas) {
                var base64 = canvas.toDataURL();
                $("[id*=hdnImageData]").val(base64);
                __doPostBack(btnExport.name, "");
            });
            return false;
        };

        function showingpanel() {
            if (document.getElementById('<%= collapseExample.ClientID%>').style.display == "block") {
                document.getElementById('<%= collapseExample.ClientID%>').style.display = "none";
            }
            else if (document.getElementById('<%= collapseExample.ClientID%>').style.display == "none") {
                document.getElementById('<%= collapseExample.ClientID%>').style.display = "block"
            }
        }

    </script>
    <style>
        body {
            font-family: "helvetica";
        }

        button {
            margin: 0 7px 0 0;
            background-color: #f5f5f5;
            border: 1px solid #dedede;
            border-top: 1px solid #eee;
            border-left: 1px solid #eee;
            font-size: 12px;
            line-height: 130%;
            text-decoration: none;
            font-weight: bold;
            color: #565656;
            cursor: pointer;
        }

        .box {
            width: 200px;
            height: 200px;
            margin: 40px;
            float: left;
            text-align: center;
            border: #969696 solid thin;
            padding: 5px;
        }

        .red {
            background-color: #e9967a;
            color: #f0f8ff;
        }

        .blue {
            background-color: #add8e6;
            color: #f0f8ff;
        }

        .cell {
            min-width: 40px;
            min-height: 20px;
            margin: 5px;
            float: left;
            text-align: center;
            border: #969696 solid thin;
            padding: 5px;
        }

        .fixed-cell {
            min-width: 40px;
            min-height: 20px;
            margin: 5px;
            position: fixed;
            text-align: center;
            border: #969696 solid thin;
            padding: 5px;
        }

        .h-bar {
            min-height: 15px;
            min-width: 10px;
            background-color: steelblue;
            margin-bottom: 2px;
            font-size: 11px;
            color: #f0f8ff;
            text-align: right;
            padding-right: 2px;
        }

        .v-bar {
            min-height: 1px;
            min-width: 30px;
            background-color: #4682b4;
            margin-right: 2px;
            font-size: 10px;
            color: #f0f8ff;
            text-align: center;
            width: 10px;
            display: inline-block;
        }

        .baseline {
            height: 1px;
            background-color: black;
        }

        .clear {
            clear: both;
        }

        .selected {
            background-color: #f08080;
        }

        .control-group {
            padding-top: 10px;
            margin: 10px;
        }

        .table {
            width: 70%;
        }

            .table td, th {
                padding: 5px;
            }

        .table-header {
            background-color: #00AFEF;
            font-weight: bold;
        }

        .table-row-odd {
            background-color: #f0f8ff;
        }

        .table-row-odd {
            background-color: #d3d3d3;
        }

        .code {
            display: inline-block;
            font-style: italic;
            background-color: #d3d3d3;
            border: #969696 solid thin;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .countdown {
            width: 150px;
            height: 150px;
            font-size: 5em;
            font-weight: bold;
        }

        .axis path, .axis line {
            fill: none;
            stroke: #000;
            shape-rendering: crispEdges;
        }

        .axis text {
            font: 10px sans-serif;
        }

        .axis .grid-line {
            stroke: black;
            shape-rendering: crispEdges;
            stroke-opacity: .2;
        }

        .line {
            fill: none;
            stroke: steelblue;
            stroke-width: 2;
        }

        .dot {
            fill: #fff;
            stroke: blue;
        }

        .area {
            stroke: none;
            fill: blue;
            fill-opacity: .2;
        }

        .pie text {
            fill: blue;
            font-weight: bold;
        }

        .circle {
            stroke: none;
            fill: blue;
            fill-opacity: .7;
        }

        .cross {
            stroke: none;
            fill: blue;
            fill-opacity: .7;
        }

        .diamond {
            stroke: none;
            fill: green;
            fill-opacity: .7;
        }

        .square {
            stroke: none;
            fill: yellow;
            fill-opacity: .7;
        }

        .triangle-down {
            stroke: none;
            fill: blueviolet;
            fill-opacity: .7;
        }

        .triangle-up {
            stroke: none;
            fill: darkred;
            fill-opacity: .7;
        }

        .bubble {
            fill-opacity: .3;
        }

        .bar {
            stroke: none;
            fill: red;
        }
    </style>
    <div class="row">
        <div class="col-xm-6" style="text-align: center;">
            <h1 style="color: #6f7a83; text-align: center; font-family: Georgia,'Times New Roman', Times, serif;">Completer Result 
                 <a href="helppage.aspx?id=hp1new&heading=newhelp">
                     <label>(help) </label>
                 </a>
            </h1>
        </div>
        <div class="col-xm-6" style="float: right;">
            <div class="btn-group">
                <% if (User.IsInRole("Premium"))
                    {%>
                <a>
                    <label onclick="showingpanel();" style="margin-right: 5px;" class="btn btn-default btn-lg">Email </label>
                </a>
                <asp:Button runat="server" ID="Button2" CssClass="btn btn-default btn-lg" Text="PDF" Style="margin-right: 5px;" UseSubmitBehavior="false" OnClick="download_pdf_Click" OnClientClick="return ConvertToImage(this)" />
                <%} %>
                <a href="all_patients_record.aspx">
                    <label class="btn btn-default btn-lg">Patients</label></a>
            </div>
        </div>
    </div>
    <div class="row text-center">
        <asp:Label runat="server" ID="email_response_show" Width="100%" CssClass="text-danger" Style="font-size: 18px;" />
    </div>

    <div class="row" id="collapseExample" runat="server" style="display: none;">
        <div class="col-xm-6"></div>
        <div class="col-xm-6" style="float: right; margin-top: 2%; margin-right: 6%;">

            <asp:TextBox runat="server" ID="txb_email" CssClass="form-control"></asp:TextBox>
            <div class="text-center" style="margin-top: 2%;">
                <asp:Button runat="server" ID="btn_send_email" CssClass="btn btn-danger" Text="Send Mail" UseSubmitBehavior="false" OnClick="btn_send_email_Click" OnClientClick="return ConvertToImage(this)" />
            </div>

        </div>
    </div>

    <div class="text-left" style="width: 85%; margin-left: 15%;">

        <asp:Label runat="server" Text="" Font-Size="18px" ID="pretreatment_value"></asp:Label>

        <br />
        <asp:Label runat="server" Text="" Font-Size="18px" ID="Label1"></asp:Label>

        <br />
        <asp:Label runat="server" Text="" Font-Size="18px" ID="Label2"></asp:Label>
        <br />
        <asp:Label runat="server" Text="" Font-Size="16px" ForeColor="Red" ID="point_result"></asp:Label>
        <br />

        <asp:Label runat="server" Text="" Font-Size="20px" ID="Label3"></asp:Label>
        <a href="helppage.aspx?id=54&heading=percentage">
            <label>(help)</label>
        </a>
        <br />
        <asp:Label runat="server" Text="" ForeColor="Red" Font-Size="16px" ID="Label4"></asp:Label>

        <br />

        <asp:Label runat="server" Visible="false" Text="5.	PAR nomogram: Please visually plot P1 score on the X axis and P2 score on the Y axis of the PAR nomograph below to identify the treatment outcome based on the intersection of the visualised x and y point." Font-Size="20px" ID="momogram"></asp:Label>


        <asp:Label runat="server" ID="pretreatment" Style="color: white;">
            
        </asp:Label>
        <asp:Label runat="server" ID="posttreatment" Style="color: white;" />

        <asp:Image ImageUrl="~/images/momogram.png" Visible="false" runat="server" ID="momogram_image" Style="margin-top: 5%;" />
    </div>

    <div id="contentcontrol" runat="server" style="width: 100%; padding: 4%; height: 600px">

        <div class="row list-inline" runat="server" id="ContentInfo">

            <div class="col-md-2 col-sm-2 col-lg-2 col-xm-2" style="text-align: right;">

                <svg height="380" style="margin-top: 100px;">

                    <text x="30" y="-190" font-size="15px" fill="blue" transform="rotate(89,0,0)">Post-treatment</text>

                </svg>

            </div>

            <div class="col-md-10 col-sm-10 col-lg-10 col-xm-10" id="chart_class">
                <h2 style="text-align: center; color: blue;">PAR Nomogram</h2>

                <svg class="col-md-12 col-sm-12 col-xm-12 col-lg-12" id="chart_svg" height="380px">
                </svg>
                <div class="col-md-12 col-sm-12 col-xm-12 col-lg-12 text-center">
                    <asp:Label runat="server" Font-Size="15px" Style="color: blue; text-align: center;" Text="Pre-treatment"></asp:Label>
                </div>

            </div>

        </div>

    </div>
    <asp:Image runat="server" ID="ImageDataSHow" />

    <asp:HiddenField ID="hdnImageData" runat="server" />


    <script src="Charts/ChartCreatingFile.js"></script>

    <script src="Scripts/Ajax.min.js"></script>


    <script type="text/javascript">

        function bubbleChart() {

            var _chart = {};

            var _width = 800, _height = 400,
                _margins = { top: 70, left: 40, right: 30, bottom: 50 },
                _x, _y, _r, // <-A
                _data = [],
                _colors = d3.scale.category10(),
                _svg,
                _bodyG;

            _chart.render = function () {



                if (!_svg) {
                    _svg = d3.select(document.getElementById("chart_svg"));
                    renderAxes(_svg);
                    defineBodyClip(_svg);
                }
                renderBody(_svg);
            };

            function renderAxes(svg) {
                var axesG = svg.append("g")
                    .attr("class", "axes");

                var xAxis = d3.svg.axis()
                    .scale(_x.range([0, quadrantWidth()]))

                    .orient("bottom");

                var yAxis = d3.svg.axis()
                    .scale(_y.range([quadrantHeight(), 0]))
                    .orient("left");

                axesG.append("g")
                    .attr("class", "axis")
                    .attr("transform", function () {
                        return "translate(" + xStart() + "," + yStart() + ")";
                    })
                    .call(xAxis);

                axesG.append("g")
                    .attr("class", "axis")
                    .attr("transform", function () {
                        return "translate(" + xStart() + "," + yEnd() + ")";
                    })
                    .call(yAxis);
            }


            function defineBodyClip(svg) {
                var padding = 0;
                svg.append("defs")
                    .append("clipPath")
                    .attr("id", "body-clip")
                    .append("rect")
                    .attr("x", 0)
                    .attr("y", 0)
                    .attr("width", quadrantWidth() + 2 * padding)
                    .attr("height", quadrantHeight());
            }

            function renderBody(svg) {
                if (!_bodyG)
                    _bodyG = svg.append("g")
                        .attr("class", "body")
                        .attr("transform", "translate("
                            + xStart()
                            + ","
                            + yEnd() + ")")
                        .attr("clip-path", "url(#body-clip)");
                renderBubbles();
            }

            function renderBubbles() {
                _r.range([0, 50]); // <-B

                _data.forEach(function (list, i) {
                    _bodyG.selectAll("circle._" + i)
                        .data(list)
                        .enter()
                        .append("circle") // <-C
                        .attr("class", "bubble _" + i);
                    _bodyG.selectAll("circle._" + i)
                        .data(list)
                        .style("stroke", function (d, j) {
                            return _colors(j);
                        })
                        .style("fill", function (d, j) {
                            return _colors(j);
                        })
                        .transition()
                        .attr("cx", function (d) {
                            return _x(d.x); // <-D
                        })
                        .attr("cy", function (d) {
                            return _y(d.y); // <-E
                        })
                        .attr("r", function (d) {
                            return _r(d.r); // <-F
                        });
                });
            }

            function xStart() {
                return _margins.left;
            }

            function yStart() {
                return _height - _margins.bottom;
            }

            function xEnd() {
                return _width - _margins.right;
            }

            function yEnd() {
                return _margins.top;
            }

            function quadrantWidth() {
                return _width - _margins.left - _margins.right;
            }

            function quadrantHeight() {
                return _height - _margins.top - _margins.bottom;
            }

            _chart.width = function (w) {
                if (!arguments.length) return _width;
                _width = w;
                return _chart;
            };

            _chart.height = function (h) {
                if (!arguments.length) return _height;
                _height = h;
                return _chart;
            };

            _chart.margins = function (m) {
                if (!arguments.length) return _margins;
                _margins = m;
                return _chart;
            };

            _chart.colors = function (c) {
                if (!arguments.length) return _colors;
                _colors = c;
                return _chart;
            };

            _chart.x = function (x) {
                if (!arguments.length) return _x;
                _x = x;
                return _chart;
            };

            _chart.y = function (y) {
                if (!arguments.length) return _y;
                _y = y;
                return _chart;
            };

            _chart.r = function (r) {
                if (!arguments.length) return _r;
                _r = r;
                return _chart;
            };

            _chart.addSeries = function (series) {
                _data.push(series);
                return _chart;
            };

            return _chart;
        }

        var numberOfSeries = 1,
            numberOfDataPoint = 11,
            data = [];
        var pretreatment = document.getElementById('<%=pretreatment.ClientID %>').innerHTML;

        var posttreatment = document.getElementById('<%=posttreatment.ClientID %>').innerHTML;


        // Bubble Loop
        for (var i = 0; i < numberOfSeries; ++i)
            data.push(d3.range(numberOfDataPoint).map(function (i) {
                return { x: pretreatment, y: posttreatment, r: 4 };
            }));


        //first line loop
        var k = 0;
        for (var b = 0; b < 1; b += 3)

            data.push(d3.range(0, 70, 1.5).map(function (b) {

                k++;

                return { x: b, y: k, r: 2 };

            }));



        //second line loop
        var j = 0;
        for (var i = 22; i < 100; i += 2)
            data.push(d3.range(22, 70, 1.1).map(function (i) {
                j++;
                return { x: i, y: j, r: 2 };
            }));




        var chart = bubbleChart()
            .x(d3.scale.linear().domain([0, 70]))
            .y(d3.scale.linear().domain([0, 45]))
            .r(d3.scale.pow().exponent(2).domain([0, 10]));


        data.forEach(function (series) {
            chart.addSeries(series);
        });

        chart.render();

    </script>




</asp:Content>
