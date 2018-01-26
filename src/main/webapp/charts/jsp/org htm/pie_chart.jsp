<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Activities of Subjects</title>
        <link rel="stylesheet" href="style.css" type="text/css">
        <script src="../amcharts/amcharts.js" type="text/javascript"></script>
        <script src="../amcharts/pie.js" type="text/javascript"></script>
        
        <script type="text/javascript">
            var chart;
            var legend;

            var chartData = [
                {
                    "subject": "Math",
                    "value": 260
                },
                {
                    "subject": "Science",
                    "value": 201
                },
                {
                    "subject": "Social",
                    "value": 65
                },
                {
                    "subject": "English",
                    "value": 39
                },
                {
                    "subject": "French",
                    "value": 19
                },
                {
                    "subject": "Arabic",
                    "value": 10
                },
                {
                    "subject": "English OL",
                    "value": 20
                }
            ];

            AmCharts.ready(function () {
                // PIE CHART
                chart = new AmCharts.AmPieChart();
                chart.dataProvider = chartData;
                chart.titleField = "subject";
                chart.valueField = "value";
                chart.outlineColor = "#FFFFFF";
                chart.outlineAlpha = 0.8;
                chart.outlineThickness = 2;
                chart.balloonText = "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>";
                // this makes the chart 3D
                chart.depth3D = 15;
                chart.angle = 30;

                // WRITE
                chart.write("chartdiv");
            });
        </script>


</head>
<body>

	<f:view>

		<h:form >
		
		  <div id="chartdiv" style="width: 90%; height: 200px;"></div>
		
		
		</h:form>
	</f:view>
</body>
</html>