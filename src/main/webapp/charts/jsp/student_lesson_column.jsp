<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@page import="stream.ischool.charts.ChartsDataBuilder"%>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>amCharts examples</title>
        <link rel="stylesheet" href="style.css" type="text/css">
        <script src="../amcharts/amcharts.js" type="text/javascript"></script>
        <script src="../amcharts/serial.js" type="text/javascript"></script>

</head>
<body>
        <div id="chartdiv" style="width: 100%; height: 600px;"></div>
<input type="hidden" id="math_score" value="70"/>
    
        <script type="text/javascript">
            var chart;
			
            
            <%
            String scriptCode="var chartData = [ ";
            
            
            String [][] chartData=new ChartsDataBuilder().getStudentLessonPerformance();
            
            for (int subjectIndex=0; subjectIndex < chartData.length-1; subjectIndex++)
            {
            	scriptCode+="{\"subject\":\""+chartData[subjectIndex][0]+"\",";
            	scriptCode+="\"performnace\":\""+chartData[subjectIndex][1]+"\",";
            	scriptCode+="\"color\":\""+chartData[subjectIndex][2]+"\"},";
            }
            // last one will be without "," in the last of the line.
            
        	if(chartData.length>=1)
        	{	
	            scriptCode+="{\"subject\":\""+chartData[chartData.length-1][0]+"\",";
	        	scriptCode+="\"performnace\":\""+chartData[chartData.length-1][1]+"\",";
	        	scriptCode+="\"color\":\""+chartData[chartData.length-1][2]+"\"}";
	            scriptCode+="];";
        	}
            out.print(scriptCode);
            %>
            var _chartData = [
                {
                    "subject": "Lesson x",
                    "performnace": document.getElementById('math_score').value,
                    "color": "#FF0F00"
                },
                {
                    "subject": "Lesson 2",
                    "performnace": 30,
                    "color": "#FF6600"
                },
                {
                    "subject": "Lesson 3",
                    "performnace": 90,
                    "color": "#FF9E01"
                },
                {
                    "subject": "Lesson 4",
                    "performnace": 87,
                    "color": "#FCD202"
                },
                {
                    "subject": "Lesson 5",
                    "performnace": 50,
                    "color": "#F8FF01"
                },
                {
                    "subject": "Lesson 6",
                    "performnace": 92,
                    "color": "#B0DE09"
                },
                {
                    "subject": "Lesson 7",
                    "performnace": 70,
                    "color": "#04D215"
                },
                {
                    "subject": "Lesson 8",
                    "performnace": 90,
                    "color": "#04D215"
                }
            ];


            AmCharts.ready(function () {
                // SERIAL CHART
                chart = new AmCharts.AmSerialChart();
                chart.dataProvider = chartData;
                chart.categoryField = "subject";
                // the following two lines makes chart 3D
                chart.depth3D = 20;
                chart.angle = 30;

                // AXES
                // category
                var categoryAxis = chart.categoryAxis;
                categoryAxis.labelRotation = 90;
                categoryAxis.dashLength = 5;
                categoryAxis.gridPosition = "start";

                // value
                var valueAxis = new AmCharts.ValueAxis();
                valueAxis.title = "Performnace";
                valueAxis.dashLength = 5;
                chart.addValueAxis(valueAxis);

                // GRAPH
                var graph = new AmCharts.AmGraph();
                graph.valueField = "performnace";
                graph.colorField = "color";
                graph.balloonText = "<span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
                graph.type = "column";
                graph.lineAlpha = 0;
                graph.fillAlphas = 1;
                chart.addGraph(graph);

                // CURSOR
                var chartCursor = new AmCharts.ChartCursor();
                chartCursor.cursorAlpha = 0;
                chartCursor.zoomable = false;
                chartCursor.categoryBalloonEnabled = false;
                chart.addChartCursor(chartCursor);

                chart.creditsPosition = "top-right";


                // WRITE
                chart.write("chartdiv");
            });
        </script>
    

    </body>

</html>