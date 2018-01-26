<%@ include file="../../include/main_include.jsp"%>

<html style="background-color:	#ececec;">
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

				
								<tr id="busy" height="27px">
					<td  >
</td>
					<td  align="center">
<img id="busy_img" alt="" src="../../images/static/common/progress_bar.gif" style="display:none;" />
</td>
<td  align="right">
<li style="color: #ececec;">				 
					Release ..
					</li>
</td>
				</tr>
				
				
				
				<tr id="main_row">
					
					<td id="left_area" style="vertical-align: top; padding-top: 4px" >
					<%@ include
							file="../../include/left_section.jsp"%></td>
					<td id="middle_area" style="vertical-align: top;" width="55%">


<div  align="center" style="border: 0px solid black; background: white; width:480px;">
</div>

						<div  align="center" style="border: 0px solid black; background: white;">
 
 <iframe id="main_iframe" src="../posts/posts_page.jsp" style="width: 100%; height: 950px; padding:0px; margin:0px; border: 0px"  
 scrolling="no" frameborder="0px"
 marginwidth="0" marginheight="0" align="top" hspace="0" vspace="0"
 onload='javascript:resizeIframe(this);'>
</iframe> 

		
						</div>
					</td>
					<td id="right_area" style="vertical-align: top; padding-top: 4px" >
					<%@ include
							file="../../include/right_section.jsp"%>
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