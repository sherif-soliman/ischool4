<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Supervisor Performance ... iSchool</title>

</head>
<body onload="on_page_load();">

	<f:view>

		<h:form enctype="multipart/form-data">

			<table border="0" width="100%">
			<!-- tr id="top_row">
			<td colspan="3" >
				<%@ include file="../../include/top_section.jsp"%>
			</td>
			</tr -->
			<tr id="main_row">
			<!-- td id="left_area" style="vertical-align: top;" >
				
			</td -->
			<td id="middle_area" style="vertical-align: top;" width="55%">
			

			<div align="center" style="border: 1px solid black; " >


				<div class="middle_menu_section" >		
					<span>Supervisor Performance  ...</span>
						
					</div>
					
				<table cellpadding="0" cellspacing="2px" width="100%" border="0">
					
					<tr>
						<td width="40%">
						</td>
						<td width="60%" align="left">
							<h:messages id="messages" errorClass="error_msg" infoClass="info_msg" warnClass="warning_msg"/>							
						</td>
					</tr>
				
					<tr>
						<td colspan="2">
					
							<br/>
						</td>
					</tr>
							<tr>
					<td>
						Class Year:
					</td>
					<td>
						<select id="class_year"> 
							<option value="Year 4" selected="selected">Year 4</option>
							<option value="Year 5">Year 5</option>
							<option value="Year 6">Year 6</option>
						</select>	
					</td>
					
					</tr>
					
					<tr>
						<td colspan="2" align="left" >
				
					<iframe src="../../charts/jsp/supervisor_teacher_column.html" 
					width="400" height="280" frameborder="0" scrolling="no"></iframe>					
						</td>
					</tr>
				
					 
					<tr>
						<td colspan="2">
					
						<br/>	
						</td>
					</tr>
					
					<tr>
						<td colspan="2" align="left" >
				
					<iframe src="../../charts/jsp/supervisor_class_column.html" 
					width="480" height="350px" frameborder="0" scrolling="no"></iframe>					
						</td>
					</tr>
				
					<tr>
						<tr>
						<td colspan="2" align="left" >
				
							Note: Class 5-D is very week and need more efforts.<BR/><BR/>					
						</td>
					</tr>
				
					<tr>
					<td colspan="2" align="center" >
						<button onclick="window.print();">Print Report </button>
						
					</td>
					
					</tr>
				</table>
				<BR/>		
				</div>
				</td>
		<!-- td id="right_area" style="vertical-align: top;">
				
			</td -->
			</tr>
			<!-- tr id="lower_row">
			<td colspan="3">
				<%@ include file="../../include/lower_section.jsp"%>
			</td>
			</tr -->
			</table>			
		</h:form>
	</f:view>
	
</body>
</html>