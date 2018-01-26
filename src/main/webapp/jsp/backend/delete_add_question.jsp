<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Add Questions ... iSchool</title>
<f:loadBundle basename="stream.ischool.internationalization.login"
	var="msg" />

</head>
<body>

	<f:view>

		<h:form enctype="multipart/form-data" id="ques_form">

			<table border="0" width="100%">
				<tr id="top_row">
					<td colspan="3"><%@ include
							file="../../include/top_section.jsp"%></td>
				</tr>
				<tr id="main_row">
					<td id="left_area" style="vertical-align: top;"><%@ include
							file="../../include/left_section.jsp"%></td>
					<td id="middle_area" style="vertical-align: top;" width="55%">


						<div align="center" style="margin: 10px; border: 1px solid black;">


							<div id="new_post"
								style="color: #FFFFFF; background-color: #0033CC; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Question Details ...</span>

							</div>
							<br/>
							<table width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >
			
								<tr>
									<td align="left" >
									Subject:
									</td>
									<td align="left" ><h:inputText
											value="#{questionMgrBean.subject}" style="width:98%;" /></td>
											
								<td align="left">
									Class Year:
									</td>
									<td align="left" ><h:inputText
											value="#{questionMgrBean.classYear}" style="width:94%;" /></td>
								</tr>
								
								<tr>
									<td align="left" >
									Lesson:
									</td>
									<td align="left" colspan="3"><h:inputText
											value="#{questionMgrBean.questionLesson}" style="width:98%;" /></td>
								</tr>
								<tr>
									<td align="left">
									Rank:
									</td>
									<td align="left" ><h:inputText
											value="#{questionMgrBean.rank}" style="width:98%;" /></td>
									<td align="left">
									Default Answer Time:
									</td>
									<td align="left" ><h:inputText
											value="#{questionMgrBean.defaultAnswerTime}" style="width:94%;" /></td>
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
											value="#{questionMgrBean.questionText}" style="width:98%;" /></td>
								</tr>
							</table>
							<table id="mcq_answers" width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >	
								<tr>
									<td align="left">
									Answer 1:
									</td>
									<td align="left" colspan="3" ><h:inputText id="answer_1"
											value="#{questionMgrBean.answer_1}" style="width:98%;" /></td>
								</tr>
								<tr>
									<td align="left">
									Answer 2:
									</td>
									<td align="left" colspan="3" ><h:inputText id="answer_2"
											value="#{questionMgrBean.answer_2}" style="width:98%;" /></td>
								</tr>
								<tr>
									<td align="left">
									Answer 3:
									</td>
									<td align="left" colspan="3" ><h:inputText
											value="#{questionMgrBean.answer_3}" style="width:98%;" /></td>
								</tr>
								<tr>
									<td align="left">
									Answer 4:
									</td>
									<td align="left" colspan="3" ><h:inputText
											value="#{questionMgrBean.answer_4}" style="width:98%;" /></td>
								</tr>
								<tr>
									<td align="left">
									Answer 5:
									</td>
									<td align="left" colspan="3" ><h:inputText
											value="#{questionMgrBean.answer_5}" style="width:98%;" /></td>
								</tr>
								<tr>
									<td align="left">
									Answer 6:
									</td>
									<td align="left" colspan="3" ><h:inputText
											value="#{questionMgrBean.answer_6}" style="width:98%;" /></td>
								</tr>
								<tr>
									<td align="left">
									Correct Answers:
									</td>
									<td align="left" colspan="3" ><h:inputText
											value="#{questionMgrBean.correctAnswers}" style="width:98%;" /></td>
								</tr>
							</table>
							<table id="fill_row" width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px; display:none;" >	
							
								<tr >
									<td align="left">
									Correct Fill:
									</td>
									<td align="left" colspan="3" ><h:inputText
											value="#{questionMgrBean.correctFill}" style="width:98%;" /></td>
								</tr>
							</table>
							<table id="fill_row" width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >	
							
								<tr>
									<td align="left">
									Image:
									</td>
									<td colspan="3" align="right"><h:inputFile
											value="#{questionMgrBean.part}"></h:inputFile></td>


								</tr>
								<tr>
									<td colspan="3"><h:panelGrid border="0" columns="2">
											<h:commandButton id="add_question" value="Add Question"
												action="#{questionMgrBean.addQuestion}"></h:commandButton>

											<h:commandButton id="delete_question" value="Delete Question"
												action="#{questionMgrBean.deleteQuestion}"></h:commandButton>

										</h:panelGrid></td>

								</tr>
							</table>



						</div>
					</td>
					<td id="right_area" style="vertical-align: top;"><%@ include
							file="../../include/right_section.jsp"%>
					</td>
				</tr>
				<tr id="lower_row">
					<td colspan="3"><%@ include
							file="../../include/lower_section.jsp"%>
					</td>
				</tr>
			</table>
		</h:form>
	</f:view>
</body>
</html>