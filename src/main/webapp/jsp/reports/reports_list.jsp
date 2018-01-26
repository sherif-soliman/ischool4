<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Top Reports List ... iSchool</title>
 
</head>
<body  class="main_body" onload="on_page_load();">

	<f:view>

		<h:form onsubmit="show_progress_bar()">

			<table border="0" width="100%">
				<!--  tr id="top_row">
					<td colspan="3">
					<%@ include
							file="../../include/top_section.jsp"%></td>
				</tr -->
				<tr id="main_row">
					<!--  td id="left_area" style="vertical-align: top;">
					
							</td -->
					<td id="middle_area" style="vertical-align: top;" width="100%">

<h:panelGroup rendered="#{security.isAuthorized('student_filter')}">
				<div align="center" style="border: 0px solid black;">
					<div class="middle_menu_section" >
								<span>Score Reports ....</span>

							</div>
		


<br/>

						



<h:panelGrid border="0" 
								columns="3"
								styleClass="select_student_panel"
								cellpadding="2" cellspacing ="4"
								>
									Class:
									<h:selectOneMenu id="classYears"
                                                     value="#{reportsListBean.classYears.selectedValue}"
                                                     style="width:160px;" >                                                     
		                                      
		                                      
		                                      <f:selectItems value="#{reportsListBean.classYears.values}"/>
		                                      <a4j:support  event="onchange" actionListener="#{reportsListBean.onClassYearsChange}"  reRender="classNames" oncomplete="hide_progress_bar();"/>
		                                      
                        				</h:selectOneMenu>

									<h:selectOneMenu id="classNames"
                                                     value="#{reportsListBean.classNames.selectedValue}"
                                                     style="width:160px;"  >                                                     		                                      
		                                      
		                                      <f:selectItems value="#{reportsListBean.classNames.values}"/>
		                                      <a4j:support  event="onchange" actionListener="#{reportsListBean.onClassNamesChange}"  reRender="students" oncomplete="hide_progress_bar();" />
                        				</h:selectOneMenu>
							
						<h:outputText></h:outputText>																			
	</h:panelGrid>							
<h:panelGrid border="0" 
								columns="2"
								styleClass="select_student_panel"
								cellpadding="2" cellspacing ="4"
						
								>
	Student:
									<h:selectOneMenu id="students"
                                                     value="#{reportsListBean.students.selectedValue}"
                                                     style="width:160px;" >                                                     
		                                      
		                                      
		                                      <f:selectItems value="#{reportsListBean.students.values}"/>
		                                      <a4j:support  event="onchange" actionListener="#{reportsListBean.onStudentsChange}"  reRender="exercises_top_reports , exam_top_reports , homework_top_reports" oncomplete="hide_progress_bar();"/>
		                                      
                        				</h:selectOneMenu>
                        				
                        				<br/>

										
	</h:panelGrid>			
	<h:commandButton action="#{reportsListBean.getFullClassHomeworkReports}" value="Click Here For Class Report">
								
							</h:commandButton>		
	

<br/><br/>


<br/>
</div>
</h:panelGroup>

						<div align="center" style="border: 1px solid black;">


							<div class="middle_menu_section" >
								<span>Exercise Reports ....</span>

							</div>
							<br/>
							
								
				<h:dataTable id="exercises_top_reports"
								width="100%" frame="below" cellpadding="5" cellspacing="0"
								var="report" value="#{reportsListBean.exerciseReportsListDM}"
								rows="#{reportsListBean.exerciseReportsListDM.rowCount}"
								rowClasses="odd_row,even_row" 
								border="0"
								>

								 
								<h:column >				
																												
								
								<h:outputLink value="./report_details.jsp" onclick="show_progress_bar()">
							
										<h:outputText value="View Questions"></h:outputText>										
										<f:param name="report_id" value="#{report.reportId}" > </f:param>
										<f:param name="practice_id" value="#{report.id}" > </f:param>
										<f:param name="creation_date" value="#{report.creationDate}" > </f:param>
										<f:param name="practice_type" value="Exercise" > </f:param>	
										<f:param name="mode" value="questions_view" > </f:param>		
								</h:outputLink>
							
								</h:column>
								<h:column >				
									<h:outputText value="#{report.subject}"></h:outputText>																				
								</h:column>
																<h:column >				
									<h:outputText value="#{report.creationDate}"></h:outputText>																				
								</h:column>
												 
								<h:column >
								
								<h:outputLink value="./report_details.jsp" onclick="show_progress_bar()">
							
										<h:outputText value="View Results"></h:outputText>										
										<f:param name="report_id" value="#{report.reportId}" > </f:param>
										<f:param name="creation_date" value="#{report.creationDate}" > </f:param>
										<f:param name="practice_type" value="Exercise" > </f:param>	
												
								</h:outputLink>
								
								
								
								</h:column>	
								
							</h:dataTable>
					
						<br/>

							<h:commandButton action="#{reportsListBean.getFullExerciseReports}" value="Click Here For Full List">
								
							</h:commandButton>
						<br/><br/>	
						</div>
					
<br/><br/>
			<div align="center" style="border: 1px solid black;">


				<div class="middle_menu_section" >
								<span>Homework Reports ....</span>

							</div>
							<br/>
							
				<h:dataTable id="homework_top_reports"
								width="100%" frame="below" cellpadding="5" cellspacing="0"
								var="report" value="#{reportsListBean.homeworkReportsListDM}"
								rows="#{reportsList.homeworkReportsListDM.rowCount}"
								rowClasses="odd_row,even_row" 
								border="0"
								>

								 <h:column >
								
								<h:outputLink value="./report_details.jsp" onclick="show_progress_bar()">
							
							
										<h:outputText value="View Questions"></h:outputText>										
										<f:param name="report_id" value="#{report.reportId}" > </f:param>
										<f:param name="practice_id" value="#{report.id}" > </f:param>	
										<f:param name="creation_date" value="#{report.creationDate}" > </f:param>
										<f:param name="practice_type" value="Homework" > </f:param>
										<f:param name="mode" value="questions_view" > </f:param>																											
								</h:outputLink>
								</h:column>	
								<h:column >				
									<h:outputText value="#{report.subject}"></h:outputText>																				
								</h:column>
																<h:column >				
									<h:outputText value="#{report.creationDate}"></h:outputText>																				
								</h:column>
												 
								<h:column >
								
								<h:outputLink value="./report_details.jsp" onclick="show_progress_bar()">
							
										<h:outputText value="View Results"></h:outputText>																				
										<f:param name="report_id" value="#{report.reportId}" > </f:param>
										<f:param name="creation_date" value="#{report.creationDate}" > </f:param>
										<f:param name="practice_type" value="Homework" > </f:param>																				
								</h:outputLink>
								</h:column>	
								
							</h:dataTable>

						<br/>

							<h:commandButton action="#{reportsListBean.getFullHomeworkReports}" value="Click Here For Full List">
							
							</h:commandButton>
						<br/><br/>	
					
							
						</div>
<br/><br/>
			<div align="center" style="border: 1px solid black;">


							<div class="middle_menu_section" >
								<span>Exam Reports ....</span>

							</div>
							<br/>
							
				<h:dataTable id="exam_top_reports"
								width="100%" frame="below" cellpadding="5" cellspacing="0"
								var="report" value="#{reportsListBean.examReportsListDM}"
								rows="#{reportsList.examReportsListDM.rowCount}"
								rowClasses="odd_row,even_row" 
								border="0"
								>

								 
								<h:column >				
								
									<h:outputLink value="./report_details.jsp" onclick="show_progress_bar()">
							
										
										<h:outputText value="View Questions"></h:outputText>										
										<f:param name="report_id" value="#{report.reportId}" > </f:param>
										<f:param name="practice_id" value="#{report.id}" > </f:param>						
										<f:param name="creation_date" value="#{report.creationDate}" > </f:param>
										<f:param name="practice_type" value="Exam" > </f:param>
										<f:param name="mode" value="questions_view" > </f:param>																				
								</h:outputLink>																				
								</h:column>
								<h:column >				
									<h:outputText value="#{report.subject}"></h:outputText>																				
								</h:column>
																<h:column >				
									<h:outputText value="#{report.creationDate}"></h:outputText>																				
								</h:column>
												 
								<h:column >
								
								<h:outputLink value="./report_details.jsp" onclick="show_progress_bar()">
							
										<h:outputText value="View Results"></h:outputText>																				
										<f:param name="report_id" value="#{report.reportId}" > </f:param>
										<f:param name="creation_date" value="#{report.creationDate}" > </f:param>
										<f:param name="practice_type" value="Exam" > </f:param>																				
								</h:outputLink>
								</h:column>	
								
							</h:dataTable>

						<br/>

							<h:commandButton action="#{reportsListBean.getFullExamReports}" value="Click Here For Full List">
							
							</h:commandButton>
						<br/><br/>	
					
							
						</div>						
						
					</td>
					<!--  td id="right_area" style="vertical-align: top;">
						

					</td -->
				</tr>
				<!--  tr id="lower_row">
					<td colspan="3">
						<%@ include
							file="../../include/lower_section.jsp"%>
					</td>
				</tr -->
			</table>
		</h:form>
	</f:view>
	
</body>
</html>