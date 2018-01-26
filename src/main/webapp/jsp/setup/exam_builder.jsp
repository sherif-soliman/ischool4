<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Build Exams ... iSchool</title>

</head>
<body>

	<f:view>

		<h:form >

			<table border="0" width="100%">
				<tr id="top_row">
					<td colspan="3">
					<!-- %@ include
							file="../../include/top_section.jsp"%--></td>
				</tr>
				<tr id="main_row">
					<td id="left_area" style="vertical-align: top;">
					
							</td>
					<td id="middle_area" style="vertical-align: top;" width="90%">


						<div align="center" style="margin: 10px; border: 1px solid black;" width="100%">


							<div class="middle_menu_section" >
								<span>Build Exams ...</span>

							</div>
							<br/>
					<table align="center">
					<tr>
					<td align="left" >
					
					School Scope:
					
					</td>
					<td align="left" >
					
					
					<h:selectOneMenu id="schools"
                                                     value="#{examBuilderBean.schools.selectedValue}"
                                                     style="width:98%;" >                                                     
		                                      <a4j:support  event="onchange" actionListener="#{examBuilderBean.onSchoolsChange}"  reRender="classYears" />
		                                      
		                                      <f:selectItems value="#{examBuilderBean.schools.values}"/>
		                                      
                        				</h:selectOneMenu>
					
					</td>
					<td align="left" >
					
					User:
					
					</td>
					<td align="left" >
					
					<h:inputText value="#{examBuilderBean.user}"  />
					
					</td>
					
					</tr>
					<tr>
					<td align="left" >
					
					Subject:
					
					</td>
					<td align="left" >
					
					<h:inputText value="#{examBuilderBean.subject}"  />
					
					</td>
					<td align="left" >
					
					Class Year:
					
					</td>
					<td align="left" >
					
					<h:selectOneMenu id="classYears"
                                                     value="#{examBuilderBean.classYears.selectedValue}"
                                                     >                                                     
		                                      
		                                      <f:selectItems value="#{lookupSetupBean.classYears.values}"/>
		                                      
                        				</h:selectOneMenu>
							
					
					</td>
					
					</tr>
					
					
					
					

					<tr>
					
					<td align="left" >
					
					No Of Ques:
					
					</td>
					<td align="left" colspan="2">
					
					<h:inputText value="#{examBuilderBean.noOfExamQuestions}"  />
					
					</td>
					
					</tr>

					
					<tr> 
					
					<td align="left">
					
							<h:commandButton id="buildExam" value="Build" 
												action="#{examBuilderBean.buildExam}"></h:commandButton>
					
					</td>
					
					<td>
							<h:commandButton id="buildAllExams" value="Build All Exams" 
												action="#{examBuilderBean.buildAllExams}"></h:commandButton>
					
					
					</td>
					</tr>
					<tr> 
					<td align="left" colspan="2">
					
					<br>
					</td></tr>
					
					</table>
				<table align="center">
					
					<tr>
					<td align="center">
					<br/>
					
						<h:outputText value="#{examBuilderBean.output}" escape="false"/>					
						<br/><br/>
						
						</td></tr></table>
						</div>
					</td>
					<td id="right_area" style="vertical-align: top;">
						
					</td>
				</tr>
				<tr id="lower_row">
					<td colspan="3">
						<!--%@ include
							file="../../include/lower_section.jsp"%-->
					</td>
				</tr>
			</table>
		</h:form>
	</f:view>
	
</body>
</html>