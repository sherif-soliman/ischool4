<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Performance Manager ... iSchool</title>

</head>
<body>

	<f:view>

		<h:form >

			<table border="0" width="100%">
				<tr id="top_row">
					<td colspan="3">
					<!-- %@ include
							file="../../include/top_section.jsp"%--></td>
				</tr>
				<tr id="main_row">
					<td id="left_area" style="vertical-align: top;">
					
							</td>
					<td id="middle_area" style="vertical-align: top;" width="90%">


						<div align="center" style="margin: 10px; border: 1px solid black;" width="100%">


							<div 
								style="color: #FFFFFF; background-color: #0033CC; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Setup ...</span>

							</div>
							<br/>
					<table align="center">
					
					<tr> 
					<td align="left" colspan="2">
					
					<br>
					</td></tr>
					<tr> 
					<td align="left">
					
							<h:commandButton id="performance_print" value="Log Tornado Perforamce" 
												action="#{performanceBean.logTornadoPerformance}"></h:commandButton>
					
					</td>
					
					<td align="left">
					
							<h:commandButton id="performance_view" value="Show Tornado Perforamce" 
												action="#{performanceBean.showTornadoPerformance}"></h:commandButton>
					
					</td>
					
					</tr>
					</table>
					<table align="center">
					
					<tr>
					<td align="center">
					<br/>
					
						<h:outputText value="#{performanceBean.output}" escape="false"/>					
						<br/><br/>
						
						</td></tr></table>
						</div>
					</td>
					<td id="right_area" style="vertical-align: top;">
						
					</td>
				</tr>
				<tr id="lower_row">
					<td colspan="3">
						<!--%@ include
							file="../../include/lower_section.jsp"%-->
					</td>
				</tr>
			</table>
		</h:form>
	</f:view>
	
</body>
</html>