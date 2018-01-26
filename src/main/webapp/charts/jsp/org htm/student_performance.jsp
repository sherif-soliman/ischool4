<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Student Performance ... iSchool</title>
<f:loadBundle basename="stream.ischool.internationalization.login" var="msg" />

</head>
<body>

	<f:view>

		<h:form enctype="multipart/form-data">

			<table border="0" width="100%">
			<tr id="top_row">
			<td colspan="3" >
				<%@ include file="../../include/top_section.jsp"%>
			</td>
			</tr>
			<tr id="main_row">
			<td id="left_area" style="vertical-align: top;" >
				<%@ include file="../../include/left_section.jsp"%>
			</td>
			<td id="middle_area" style="vertical-align: top;" width="55%">
			

			<div align="center" style="margin: 10px; border: 1px solid black; " >


	<div id="new_post" style="color: #FFFFFF;  background-color: #0033CC; 
					font-family: Verdana, Arial, Sans-Serif; font-size:15px;
					height:30px; line-height: 30px;
					boarder:1; "
					>
					<span>Overall Performance / Subject ...</span>
						
					</div>
					
				<table cellpadding="0" cellspacing="2px" width="100%" >
					
					<tr>
						<td width="40%">
						</td>
						<td width="60%" align="left">
							<h:messages id="messages" errorClass="error_msg" infoClass="info_msg" warnClass="warning_msg"/>							
						</td>
					</tr>
					<tr>
						<td colspan="2">
					
							
						</td>
					</tr>
					<tr>
						<td colspan="2" align="left" >
				
					<iframe src="../../charts/jsp/column3D.html" width="300" hight="200"></iframe>					
						</td>
					</tr>
					
				</table>
						
				</div>
				</td>
		<td id="right_area" style="vertical-align: top;">
				<%@ include file="../../include/right_section.jsp"%>
			</td>
			</tr>
			<tr id="lower_row">
			<td colspan="3">
				<%@ include file="../../include/lower_section.jsp"%>
			</td>
			</tr>
			</table>			
		</h:form>
	</f:view>
</body>
</html>