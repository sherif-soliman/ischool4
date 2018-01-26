<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Exercise List ... iSchool</title>
 
</head>
<body  class="main_body" onload="on_page_load();">

	<f:view>

		<h:form onsubmit="show_progress_bar();">

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


						<div align="center" style="border: 0">


							<div class="middle_menu_section" >
								<span>Exercise List ....</span>

							</div>
							<br/>
							<h:panelGroup rendered="#{exerciseList.showClassYear}"> 
							<div id="select_year"
								style="color: #FFFFFF; background-color: white; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1; color:black;">
								<h:panelGrid border="0" columns="2" style="color: black;  background-color: #FFFFFF; 
					font-family: Verdana, Arial, Sans-Serif; 
					font-weight: bold;
					height:30px; line-height: 30px;"					
					>
									<span>Class Year:</span>
									
									
									<h:selectOneMenu id="classYears"
                                                     value="#{exerciseList.classYears.selectedValue}"
                                                     style="width:160px;" >                                                     
		                                      
		                                      <a4j:support  event="onchange" actionListener="#{exerciseList.onClassYearsChange}"  reRender="subjects_list" oncomplete="hide_progress_bar();"/>
		                                      
		                                      <f:selectItems value="#{exerciseList.classYears.values}"/>
		                                      
                        				</h:selectOneMenu>
								</h:panelGrid>
							</div>							
							<br/>
							</h:panelGroup>
					<br/>
						<h:dataTable id="subjects_list"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{exerciseList.subjetcListDM}"
								rows="#{exerciseList.noOfExerciseSubjects}"
								border="0" 								
								>

									
								<h:column rendered="#{!exerciseList.mobileDevice}">
								
							
							<h:outputLink value="../exercise/subject_exercise_list.jsp" style="text-decoration:none;">
							
							
									&nbsp;&nbsp;<h:graphicImage url="../../images/static/subjects/#{trows.toLowerCase()}.jpeg"  width="140" style="border:0;"/>
									
							<f:param name="selectedSubject" value="#{trows}" ></f:param>
							</h:outputLink>		
								</h:column>	
								
								<h:column >	
								
								<h:outputLink value="subject_exercise_list.jsp" rendered="#{exerciseList.mobileDevice}" >
							
							
								<h:graphicImage url="../../images/static/subjects/#{trows.toLowerCase()}.jpeg"  width="100%" style="border:0;"/>
							
							<f:param name="selectedSubject" value="#{trows}" ></f:param>
							</h:outputLink>
													
								<h:dataTable id="exercises_list"
								width="100%" frame="below" cellpadding="5" cellspacing="0"
								var="trows2" value="#{exerciseList.getExercisesListDM(trows)}"
								rows="50"
								rowClasses="odd_row,even_row" 
								border="0">

								 
								<h:column >
								
								<h:outputLink value="../question/question.jsp" style="text-decoration: none;">
							
										<h:outputText value="EX (#{exerciseList.rowIndex+1}): #{trows2.substring(trows2.indexOf(' -')+2)}" ></h:outputText>
										<f:param name="practiceId" value="#{trows2.substring(0,trows2.indexOf(':'))}" > </f:param>
										<f:param name="newRequest" value="EXERCISE" > </f:param>										
								</h:outputLink>
								</h:column>
								 
								
								
							</h:dataTable>
							
							<h:outputLink value="../exercise/subject_exercise_list.jsp" styleClass ="more_row" >More ...
							<f:param name="selectedSubject" value="#{trows}" ></f:param>
							</h:outputLink>
							<br/><br/>
								</h:column>
								
								
							</h:dataTable>
							
							
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