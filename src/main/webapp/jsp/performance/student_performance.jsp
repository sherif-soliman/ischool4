<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Student Performance ... iSchool</title>

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
					<span>Student Performance  ...</span>
						
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
					
							
						</td>
					</tr>
					
					<tr>
						<td colspan="2" align="left" >
				
					<iframe src="../../charts/jsp/student_subject_pie_donut.html?y=8" 
					width="100%" height="380px" frameborder="0" 
					scrolling="no"></iframe>					
						</td>
					</tr>
				
					<tr>
						<td colspan="2" align="left" >
				
					<iframe src="../../charts/jsp/student_subject_column.html?y=8" 
					width="100%" height="280" frameborder="0" scrolling="no"></iframe>					
						</td>
					</tr>
				
				<tr>
						<td colspan="2" align="left" >
							Note: you need to spend more efforts in Social.
							<br/>
							</td>
					</tr>
					
					<tr>
					
					<td>
						Subject:
					</td>
					<td>
						<select id="subject"> 
							<option value="Math" selected="selected">Math</option>
							<option value="Science">Science</option>
							<option value="Social">Social</option>
						</select>	
						
							<h:selectOneMenu id="classYears"
                                                     value="#{perfBean.subjects.selectedValue}"
                                                     style="width:160px;" >                                                     
		                                      
		                                      
		                                      <f:selectItems value="#{perfBean.subjects.values}"/>
		                                      <a4j:support  event="onchange" actionListener="#{perfBean.onSubjectChange}"  reRender="" oncomplete="hide_progress_bar();"/>
		                                      
                        				</h:selectOneMenu>
                        				
					</td>
					
					</tr>
					<tr>
						<td colspan="2">
					
						<br/>	
						</td>
					</tr>
					<tr>
						<td colspan="2" align="left" >
				
					<iframe src="../../charts/jsp/student_lesson_pie_donut.html?y=8" 
					width="100%" height="380px" frameborder="0" scrolling="no"></iframe>					
						</td>
					</tr>
					<tr>
						<td colspan="2" align="left" >
				
					<iframe src="../../charts/jsp/student_lesson_column.jsp?y=8" 
					width="100%" height="650" frameborder="0" scrolling="no"></iframe>					
						</td>
					</tr>
				
					<tr>
					<td colspan="2" align="center" >
						<button onclick="window.print();">Print Report </button>
						
					</td>
					
					</tr>
				</table>
						<br/>
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