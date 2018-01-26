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
				<tr id="main_row">
					<td id="middle_area" style="vertical-align: top;" width="75%">


						<div align="center" style="border: 0px solid black;">


							<div id="new_practice"
								style="color: #FFFFFF; background-color: #0033CC; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Practice Details ...</span>

							</div>
							<br/>
	<h:form id="practice_form" onsubmit="document.getElementById('question_details').style.display=''">
							<div style="border: 1px solid black;">
							<table width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >
							
								<tr>
									<td align="left" >
									<br/>
									Practice Type:
									</td>
									<td align="left" width="35%" >									
										<h:selectOneMenu id="type"
                                                     value="#{practiceMgrBean.practiceType.selectedValue}"
                                                     style="width:98%;" >                                                     
		                                      <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onPracticeTypeChange}"  reRender="schools" />
		                                      
		                                      <f:selectItems value="#{practiceMgrBean.practiceType.values}"/>
		                                      
                        				</h:selectOneMenu>	
                        			</td>
									<td align="left">
									School:
									</td>
									<td align="left" width="35%" >
										<h:selectOneMenu id="schools"
                                                     value="#{practiceMgrBean.schools.selectedValue}"
                                                     style="width:98%;" >                                                     
		                                      <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onSchoolsChange}"  reRender="classYears,subjects" />
		                                      
		                                      <f:selectItems value="#{practiceMgrBean.schools.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
								</tr>
								<tr>
									<td align="left" >
									Class Year:
									</td>
									<td align="left" >
									<h:selectOneMenu id="classYears"
                                                     value="#{practiceMgrBean.classYears.selectedValue}"
                                                     style="width:98%;" >                                                     
		                                      <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onClassYearsChange}"  reRender="classNames" />
		                                      
		                                      <f:selectItems value="#{practiceMgrBean.classYears.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
											
									<td align="left">
									Class Name:
									</td>
									<td align="left" >
									<h:selectOneMenu id="classNames"
                                                     value="#{practiceMgrBean.classNames.selectedValue}"
                                                     style="width:98%;" >                                                     		                                      
		                                      <f:selectItems value="#{practiceMgrBean.classNames.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
								</tr>
								<tr>
									<td align="left" >
									Subject:
									</td>
									<td align="left" >
										<h:selectOneMenu id="subjects"
                                                     value="#{practiceMgrBean.subjects.selectedValue}"
                                                     style="width:98%;" >                                                     
		                                      <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onSubjectsChange}"  reRender="units" />
		                                      
		                                      <f:selectItems value="#{practiceMgrBean.subjects.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
											
									<td align="left">
									
									</td>
									<td align="left" ></td>
								</tr>
								<tr>
									<td align="left" >
									Unit:
									</td>
									<td align="left" >
										<h:selectOneMenu id="units"
                                                     value="#{practiceMgrBean.units.selectedValue}"
                                                     style="width:98%;" >                                                     
		                                      <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onUnitsChange}"  reRender="lessons,ques_lessons" />
		                                      
		                                      <f:selectItems value="#{practiceMgrBean.units.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
											
									<td align="left">
									Lesson:
									</td>
									<td align="left" >
										<h:selectOneMenu id="lessons"
                                                     value="#{practiceMgrBean.lessons.selectedValue}"
                                                     style="width:98%;" >                                                     		                              
                                                      <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onLessonsChange}" />        
		                                      <f:selectItems value="#{practiceMgrBean.lessons.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
								</tr>
									

								<tr>
									
									<td align="center"  colspan="2">
									<br/><br/>
									
								
							<h:commandButton id="add_practice" value="Add New Practice"
												action="#{practiceMgrBean.addNewPractice}">
							</h:commandButton>

							
									<br/><br/>
									
									</td>
									
									
										<td align="center"  colspan="2">
									<br/><br/>
									
								
							<h:commandButton id="search_practice" value="Search Practice"
												action="#{practiceMgrBean.openPracticeSearch}">
							</h:commandButton>

							
									<br/><br/>
									
									</td>
									
									
								</tr>

				

							</table>
							</div>
	</h:form>
	<h:form enctype="multipart/form-data" id="ques_form">
							<br/>
							<div id="question_details" style="border: 1px solid black; display:;">
							<table width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >
								<br/>
								<tr>
											
									<td align="left">
									Lesson:
									</td>
									<td align="left"  colspan="3">
										<h:selectOneMenu id="ques_lessons"
                                                     value="#{practiceMgrBean.questionLessons.selectedValue}"
                                                     style="width:98%;" >                                                     		                                      
		                                      <f:selectItems value="#{practiceMgrBean.questionLessons.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
								</tr>
									
								<tr>
									<td align="left">
									Rank:
									</td width="20">
									<td align="left" ><h:inputText
											value="#{practiceMgrBean.rank}" style="width:98%;" /></td>
									<td align="left">
									Default Answer Time:
									</td>
									<td align="left" ><h:inputText
											value="#{practiceMgrBean.defaultAnswerTime}" style="width:94%;" /></td>
								</tr>

								<tr>
									<td align="left" >
									Type:
									</td>
									<td align="left" >
										True/False
										<input type="radio" name="ques_type" value="bool"	onclick="document.getElementById('ques_form:answer_1').value='True'; document.getElementById('ques_form:answer_2').value='False';"  /></td>										 
									<td align="left">
										MCQ																			
										<input type="radio" checked="checked" name="ques_type" value="mcq"	 onclick="document.getElementById('fill_row').style.display='none'; document.getElementById('mcq_answers').style.display=''; "   /></td>
									<td align="left">
										Fill																		
									<input type="radio" name="ques_type" value="fill"	onclick="document.getElementById('mcq_answers').style.display='none'; document.getElementById('fill_row').style.display='';"  /></td>
								</tr>
								<tr>
									<td align="left">
									Question Text:
									</td>
									<td align="left" colspan="3" ><h:inputTextarea
											value="#{practiceMgrBean.questionText}" style="width:98%;" />
									</td>
								</tr>
								<tr>
								<td align="right" colspan="3">
										<h:commandButton id="searchQuestions" value="Search Questions"
												action="#{practiceMgrBean.openQuestionSearch}"></h:commandButton>
									</td>
								</tr>
							</table>
							<table id="ques_img" width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >	
							<tr>
									<td align="left" >
									Question Image:
									</td>
									<td>
											<h:graphicImage value="#{practiceMgrBean.questionImageUrl}" width="30" height="30"/>
											</td>
									<td align="left">
										<h:commandButton id="getPublicImages" value="Public"
												action="#{practiceMgrBean.onClickQuestionImageLooker}"></h:commandButton>
									</td>
									
									<td align="left">
										<h:inputFile
											value="#{practiceMgrBean.partQuestion}"></h:inputFile>	

									</td>
									<td width= "30%">     
									</td>
									<br/>
								</tr>
							</table>
							<table id="mcq_answers" width="100%" border="1" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >	
								<tr>
									<td align="left" width="15%">
									Answer [A]:
									</td>
									<td align="left" width="50%"><h:inputText id="answer_1"
											value="#{practiceMgrBean.answer_1}" style="width:98%;" />
											</td>
											<td>
											<h:graphicImage value="#{practiceMgrBean.answer_1ImageUrl}" width="30" height="30"/>
											</td>
									
									<td align="left">
										<h:commandButton  value="Public"
												action="#{practiceMgrBean.onClickAns1ImageLooker}"></h:commandButton>
									</td>
									
									<td align="right">
										<h:inputFile
											value="#{practiceMgrBean.partAnswer_1}"></h:inputFile>	

									</td>
								</tr>
								<tr>
									<td align="left" width="15%">
									Answer [B]:
									</td>
									<td align="left" width="50%"><h:inputText id="answer_2"
											value="#{practiceMgrBean.answer_2}" style="width:98%;" /></td>
									
									<td>
											<h:graphicImage value="#{practiceMgrBean.answer_2ImageUrl}" width="30" height="30"/>
											</td>
									<td align="left">
										<h:commandButton  value="Public"
												action="#{practiceMgrBean.onClickAns2ImageLooker}"></h:commandButton>
									</td>
									
									<td align="right">
										<h:inputFile
											value="#{practiceMgrBean.partAnswer_2}"></h:inputFile>	

									</td>
								</tr>
								<tr>
									<td align="left" width="15%">
									Answer [C]:
									</td>
									<td align="left" width="50%"><h:inputText id="answer_3"
											value="#{practiceMgrBean.answer_3}" style="width:98%;" /></td>
									<td>
											<h:graphicImage value="#{practiceMgrBean.answer_3ImageUrl}" width="30" height="30"/>
											</td>
									<td align="left">
										<h:commandButton  value="Public"
												action="#{practiceMgrBean.onClickAns3ImageLooker}"></h:commandButton>
									</td>
									
									<td align="right">
										<h:inputFile
											value="#{practiceMgrBean.partAnswer_3}"></h:inputFile>	

									</td>
								</tr>
								<tr>
									<td align="left" width="15%">
									Answer [D]:
									</td>
									<td align="left" width="50%"><h:inputText id="answer_4"
											value="#{practiceMgrBean.answer_4}" style="width:98%;" /></td>
									<td>
											<h:graphicImage value="#{practiceMgrBean.answer_4ImageUrl}" width="30" height="30"/>
											</td>
									<td align="left">
										<h:commandButton  value="Public"
												action="#{practiceMgrBean.onClickAns4ImageLooker}"></h:commandButton>
									</td>
									
									<td align="right">
										<h:inputFile
											value="#{practiceMgrBean.partAnswer_4}"></h:inputFile>	

									</td>
								</tr>
								<tr>
									<td align="left" width="15%">
									Answer [E]:
									</td>
									<td align="left" width="50%"><h:inputText id="answer_5"
											value="#{practiceMgrBean.answer_5}" style="width:98%;" /></td>
									<td>
											<h:graphicImage value="#{practiceMgrBean.answer_5ImageUrl}" width="30" height="30"/>
											</td>
									<td align="left">
										<h:commandButton  value="Public"
												action="#{practiceMgrBean.onClickAns5ImageLooker}"></h:commandButton>
									</td>
									
									<td align="right">
										<h:inputFile
											value="#{practiceMgrBean.partAnswer_5}"></h:inputFile>	

									</td>
								</tr>
								<tr>
									<td align="left" width="15%">
									Answer [F]:
									</td>
									<td align="left" width="50%"><h:inputText id="answer_6"
											value="#{practiceMgrBean.answer_6}" style="width:98%;" /></td>
									<td>
											<h:graphicImage value="#{practiceMgrBean.answer_6ImageUrl}" width="30" height="30"/>
											</td>
									<td align="left">
										<h:commandButton  value="Public"
												action="#{practiceMgrBean.onClickAns6ImageLooker}"></h:commandButton>
									</td>
									
									<td align="right">
										<h:inputFile
											value="#{practiceMgrBean.partAnswer_6}"></h:inputFile>	

									</td>
								</tr>

								<tr>
									<td align="left">
									Correct Answers:
									</td>
									<td align="left" colspan="3" ><h:inputText
											value="#{practiceMgrBean.correctAnswers}" style="width:98%;" /></td>
								</tr>




								
							</table>
							<table id="fill_row" width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px; display:none;" >	
							
								<tr >
									<td align="left">
									Correct Fill:
									</td>
									<td align="left" colspan="3" ><h:inputText
											value="#{practiceMgrBean.correctFill}" style="width:200px;" />
									</td>
								</tr>
							</table>

							<table id="ques_img" width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >	
							<tr>

								<tr>
									<td colspan="3"><h:panelGrid border="0" columns="4">
											<h:commandButton id="add_question" value="Add Question"
												action="#{practiceMgrBean.addQuestion}"></h:commandButton>

											<h:commandButton id="update_question" value="Update Question"
												action="#{practiceMgrBean.updateQuestion}"></h:commandButton>
												
											<h:commandButton id="delete_question" value="Delete Question"
												action="#{practiceMgrBean.deleteQuestion}"></h:commandButton>

											<h:commandButton id="close_screen" value="Finish"
												action="#{practiceMgrBean.close}"></h:commandButton>

										</h:panelGrid></td>

								</tr>
							</table>
							</div>
</h:form>

						</div>
					</td>
				</tr>
			</table>


	</f:view>
</body>
</html>