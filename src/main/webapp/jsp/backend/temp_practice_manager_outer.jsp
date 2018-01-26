<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Manage Practice ... iSchool</title>

</head>
<body>

	<f:view>

		

			<table border="0" width="100%">
				<tr id="top_row">
					<td colspan="3" background="gray" style="padding-right: 8px;"><%@ include
							file="../../include/top_section.jsp"%></td>
				</tr>
				<tr id="main_row">
					
					<td id="left_area" style="vertical-align: top; padding-top: 4px" >
					<%@ include
							file="../../include/left_section.jsp"%></td>
					<td id="middle_area" style="vertical-align: top;" width="75%">


						<div  align="center" style="border: 0px solid black;">
 
 <iframe src="temp_practice_manager_inner.jsp" style="width: 100%; height: 900px; padding:0px; margin:0px; border: 0px"  
 scrolling="no" frameborder="0px" 
 marginwidth="0" marginheight="0" align="top" hspace="0" vspace="0"
 >
</iframe> 

		
						</div>
					</td>
					<td id="right_area" style="vertical-align: top;">
					<!--%@ include
							file="../../include/right_section.jsp"%-->
					</td>
				</tr>
				<tr id="lower_row">
					<td colspan="3"><%@ include
							file="../../include/lower_section.jsp"%>
					</td>
				</tr>
			</table>


	</f:view>
</body>
</html>