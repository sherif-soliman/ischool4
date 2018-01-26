<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Homework List ... iSchool</title>



</head>
<body onload="on_page_load(); ">

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
					<td id="middle_area" style="vertical-align: top;" width="55%">


						<div align="center" style="border: 0px solid black;">


						<div class="middle_menu_section" >
								<span>Homework List ...</span>

							</div>
							<br/>
					<br/>
	<h:panelGroup rendered="#{security.isAuthorized('homework_list.class_filter')}">
<table>

	<tr>
									<td align="left" >
									Class:
									</td>
									<td align="left" >
									<h:selectOneMenu id="classYears"
                                                     value="#{homeworkList.classYears.selectedValue}"
                                                     style="width:160px;" >                                                     
		                                      
		                                      
		                                      <f:selectItems value="#{homeworkList.classYears.values}"/>
		                                      <a4j:support  event="onchange" actionListener="#{homeworkList.onClassYearsChange}"  reRender="classNames" oncomplete="hide_progress_bar();"/>
		                                      
                        				</h:selectOneMenu>
									</td>
										<td align="left">
									
									</td>
									<td align="left" >
									<h:selectOneMenu id="classNames"
                                                     value="#{homeworkList.classNames.selectedValue}"
                                                     style="width:160px;"  >                                                     		                                      
		                                      
		                                      <f:selectItems value="#{homeworkList.classNames.values}"/>
		                                      <a4j:support  event="onchange" actionListener="#{homeworkList.onClassNamesChange}"  reRender="subjects_list" oncomplete="hide_progress_bar();" />
                        				</h:selectOneMenu>
									</td>
										
								
								</tr>
</table>
</h:panelGroup>
	<br/>
					<br/>
						<h:dataTable id="subjects_list"
								width="100%" frame="below" cellpadding="6" cellspacing="6"
								var="trows" value="#{homeworkList.subjetcListDM}"
								rows="#{homeworkList.noOfHomeworkSubjects}"
								border="0" 
								>


								<h:column rendered="#{!homeworkList.mobileDevice}">
								
									&nbsp;&nbsp;<h:graphicImage url="../../images/static/subjects/#{trows.toLowerCase()}.jpeg"  width="140" style="border:0;" />
									
								</h:column>	
								
								<h:column>
									<h:graphicImage url="../../images/static/subjects/#{trows.toLowerCase()}.jpeg"  width="140" rendered="#{homeworkList.mobileDevice}"/>
								
								<h:dataTable id="homework_list"
								width="100%" frame="below" cellpadding="0" cellspacing="5"
								var="trows2" value="#{homeworkList.getHomeworkListDM(trows)}"
								rows="#{tempHomeworkListDM.homeworkListSize}"
								rowClasses="odd_row,even_row"
								border="0">

								 
								<h:column>
								<h:outputLink value="../question/question.jsp" style="text-decoration: none;">
							
										<h:outputText value="#{trows} Homework: #{trows2}"></h:outputText>
										<f:param name="practiceId" value="#{trows2.substring(0,trows2.indexOf(':'))}" > </f:param>
										<f:param name="newRequest" value="HOMEWORk" > </f:param>										
								</h:outputLink>
								</h:column>
								 
								
								
							</h:dataTable>
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