<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
 
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>




<html>
<head>
<meta content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, width=device-width" name="viewport"/>


<link  href="css/main.css" rel="stylesheet" type="text/css" media="all"/>
<link  href="../../css/main.css" rel="stylesheet" type="text/css" media="all"/>


<script type="text/javascript" src="scripts/main.js"></script>
<script type="text/javascript" src="../../scripts/main.js"></script>

<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Error ... iSchool</title>

<script type="text/javascript">

function report_log()
{
	
	var location=window.top.location.href ;
	window.top.location.href =location.substring(0,location.indexOf('faces'))+"log";
	
	document.getElementById("log_error").style="display:none;";
	document.getElementById("log_done").style="display:;";
	
}
</script>

</head>
<body onload="hide_progress_bar();">

	
			<table border="0" width="100%">
			
			<tr id="main_row">
			
			<td id="middle_area" style="vertical-align: top;" width="55%" colspan="4">
			

			<div align="center" style=" border: 0; " >

				<div class="middle_menu_section" >
					<span>Sorry, an error occurred, please try again ...</span>
						
					</div>
					
					<br/><br/><br/>
					<div id="log_error">
					<a href="#" onclick="report_log();"> Please click here to report the error ..</a>
					</div>
					
					<div id="log_done" style="display:none;">
					<p>Error has been reported successfully.. Thank you</p>
					</div>
					
					<br/>
			</div>
				</td>
		
			</tr>
		
			<!-- tr>
						<td style="vertical-align: top;" align="center">
							<img	src="../../images/static/common/performance.jpg" width="225" border="0" height="140"/>

						</td>

						<td style="vertical-align: top;" align="center">
							
							<img src="../../images/static/common/exercise.jpeg" width="225" border="0" height="140"/>


						</td>
					
						<td style="vertical-align: top;" align="center">
							<img src="../../images/static/common/homework.jpeg" width="225" border="0" height="140"/>

						</td>
						<td style="vertical-align: top;" align="center">
								<img src="../../images/static/common/friends.jpeg" width="225" border="0" height="140"/>
						</td>
					</tr -->
					
			<tr id="lower_row">
			<td colspan="3">
				<%@ include file="../../include/lower_section.jsp"%>
			</td>
			</tr>
			</table>			
	
</body>
</html>