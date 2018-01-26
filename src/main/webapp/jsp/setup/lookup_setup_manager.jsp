<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Lookup Setup ... iSchool</title>

</head>
<body onload="on_page_load();">

	<f:view>

		
	<h:form id="practice_form"  onsubmit="show_progress_bar();">
<table border="0" width="100%">
			<!--  tr id="top_row">
			<td colspan="3" >
				<%@ include file="../../include/top_section.jsp"%>
			</td>
			</tr-->
			<tr id="main_row">
					<!-- td id="left_area" style="vertical-align: top;"></td-->
					<td id="middle_area" style="vertical-align: top;" width="75%">


						<div align="center" style="border: 0px solid black;">


						<div class="middle_menu_section" >
								<span>Lookup Details ...</span>

							</div>
							<br/>

							<div style="border: 1px solid black;">
							<table width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >
				
				<tr>
								<td colspan="5">	
									<br/><br/>
								</td>
								</tr>
							
								<tr>
																	<td align="left">
									School:
									</td>
									<td align="left" style="width:200px;"  colspan="2">
										<h:selectOneMenu id="schools"
                                                     value="#{lookupSetupBean.schools.selectedValue}"
                                                     style="width:98%;" >                                                     
		                                      <a4j:support  event="onchange" actionListener="#{lookupSetupBean.onSchoolsChange}"  reRender="classYears,school" oncomplete="hide_progress_bar();"/>
		                                      
		                                      <f:selectItems value="#{lookupSetupBean.schools.values}"/>
		                                      
                        				</h:selectOneMenu>
									<!--  
									</td>
				<td align="left">
									
									<h:inputText id="school" value="#{lookupSetupBean.school}"/>
									 
									</td>
									-->
									<td align="left" >
									
									</td>
									<td align="left" >
									
									</td>
	
								</tr>
								<tr>
									<td align="left" >
									Class Year:
									</td>
									<td align="left" >
									<h:selectOneMenu id="classYears"
                                                     value="#{lookupSetupBean.classYears.selectedValue}"
                                                     style="width:160px;" >                                                     
		                                      <a4j:support  event="onchange" actionListener="#{lookupSetupBean.onClassYearsChange}"  reRender="classNames, classYearTitle,subjects" oncomplete="hide_progress_bar();"/>
		                                      
		                                      <f:selectItems value="#{lookupSetupBean.classYears.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
									<td align="left">
									<!--  
									<h:inputText id="classYearTitle" value="#{lookupSetupBean.classYearTitle}"/>
									-->
									</td>
									
									<td align="left" >
									
									</td>
									<td align="left" >
									
									</td>
								</tr>
								
									
									<tr>		
									<td align="left">
									Class Name:
									</td>
									<td align="left" >
									<h:selectOneMenu id="classNames"
                                                     value="#{lookupSetupBean.classNames.selectedValue}"
                                                     style="width:160px;"  >                                                     		                                      
		                                      <f:selectItems value="#{lookupSetupBean.classNames.values}"/>
		                                      <a4j:support  event="onchange" actionListener="#{lookupSetupBean.onClassNamesChange}"  reRender="className" oncomplete="hide_progress_bar();"/>
                        				</h:selectOneMenu>
									</td>
										<td align="left">
									<h:inputText id="className" value="#{lookupSetupBean.className}"/>
									</td>
									<td align="left" >
									<h:commandButton value="Add" action="#{lookupSetupBean.addClassName}"/>
									</td>
									<td align="left" >
									<h:commandButton value="Update" action="#{lookupSetupBean.updateClassName}"/>
									</td>
								
								</tr>
								<tr>
									<td align="left" >
									Subject:
									</td>
									<td align="left" >
										<h:selectOneMenu id="subjects"
                                                     value="#{lookupSetupBean.subjects.selectedValue}"
                                                     style="width:160px;"  >                                                     
		                                      <a4j:support  event="onchange" actionListener="#{lookupSetupBean.onSubjectsChange}"  reRender="units, subject" oncomplete="hide_progress_bar();"/>
		                                      
		                                      <f:selectItems value="#{lookupSetupBean.subjects.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
											
									<td align="left">
									<h:inputText id="subject" value="#{lookupSetupBean.subject}" />
									</td>
									<td align="left" >
									<h:commandButton value="Add" action="#{lookupSetupBean.addSubject}"/>
									</td>
									<td align="left" >
									<h:commandButton value="Update" action="#{lookupSetupBean.updateSubject}"/>
									</td>
								</tr>
								<tr>
									<td align="left" >
									Unit:
									</td>
									<td align="left" >
										<h:selectOneMenu id="units"
                                                     value="#{lookupSetupBean.units.selectedValue}"
                                                     style="width:160px;"  >                                                     
		                                      <a4j:support  event="onchange" actionListener="#{lookupSetupBean.onUnitsChange}"  reRender="lessons, unit" oncomplete="hide_progress_bar();"/>
		                                      
		                                      <f:selectItems value="#{lookupSetupBean.units.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
									
									<td align="left">
									<h:inputText id="unit" value="#{lookupSetupBean.unit}"/>
									</td>
									<td align="left" >
									<h:commandButton value="Add" action="#{lookupSetupBean.addUnit}"/>
									</td>
									<td align="left" >
									<h:commandButton value="Update" action="#{lookupSetupBean.updateUnit}"/>
									</td>
									
									</tr>		
									<tr>
									<td align="left">
									Lesson:
									</td>
									<td align="left" >
										<h:selectOneMenu id="lessons"
                                                     value="#{lookupSetupBean.lessons.selectedValue}"
                                                     style="width:160px;"  >                                                     		                              
                                                            <a4j:support  event="onchange" actionListener="#{lookupSetupBean.onLessonsChange}"  reRender="lesson" oncomplete="hide_progress_bar();"/>
		                                      <f:selectItems value="#{lookupSetupBean.lessons.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
									<td align="left">
									<h:inputText id="lesson" value="#{lookupSetupBean.lesson}"/>
									</td>
									<td align="left" >
									<h:commandButton value="Add" action="#{lookupSetupBean.addLesson}"/>
									</td>
									<td align="left" >
									<h:commandButton value="Update" action="#{lookupSetupBean.updateLesson}"/>
									</td>
								</tr>
								<tr>
								<td colspan="5">	
									<br/><br/>
								</td>
								</tr>
				

							</table>
							</div>
	
	

						</div>
				</td>
		<!--  td id="right_area" style="vertical-align: top;">
				
			</td -->
			</tr>
			<!--  tr id="lower_row">
			<td colspan="3">
				<%@ include file="../../include/lower_section.jsp"%>
			</td>
			</tr-->
			</table>

</h:form>

	</f:view>
	
</body>
</html>