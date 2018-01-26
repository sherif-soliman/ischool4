<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Exercise Details... iSchool</title>

<script type="text/javascript">

function resizeQuestionImage() 
{
    //alert(obj.contentWindow.document.body.scrollHeight + 'px');
//alert("start ..");  
	var imgs = document.getElementsByTagName("img");
	    var obj;

	    for (var i = 0; i < imgs.length; i++) 
	    {
	    	obj=imgs[i];
	    	var width= obj.width;
	  //alert(width);  	
	    	if(width < 200)
	    	{
	    		width = "20%";
	    	}else if(width < 400)
	    	{
	    		width = "40%";
	    	}else if(width < 600)
	    	{
	    		width = "50%";
	    	}else
	    	{
	    		width = "70%";
	    	}
	    	//obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
	    	obj.style.width = width;
	    
	   //alert("new wid: "+obj.style.width ); 	
	    }
}
</script>

</head>
<body onload="on_page_load(); resizeQuestionImage(); check_adjust_arabic (document.getElementById('question_div'));">

	<f:view>

		<h:form onsubmit="show_progress_bar()">
			
			<table border="0" width="100%">
			<!--  tr id="top_row">
			<td colspan="3" >
				<%@ include file="../../include/top_section.jsp"%>
			</td>
			</tr -->
			<tr id="main_row">
			<!--  td id="left_area" style="vertical-align: top;">
				
			</td -->
			<td id="middle_area" style="vertical-align: top;" width="55%">
			

			<div align="center" style=" border: 1px solid black; ">

				<table cellpadding="0" cellspacing="2px" width="100%" >
					<tr>
						<td width="40%"></td>
						<td width="60%" align="left"><h:messages id="messages"
								errorClass="error_msg" infoClass="info_msg"
								warnClass="warning_msg" /></td>
					</tr>
					<tr>
						<td colspan="2" style="color: blue;  background-color: white; 
					font-family: Verdana, Arial, Sans-Serif; font-size:15px;
					height:30px; line-height: 30px;
					boarder:1; " align="left">
						&nbsp;<h:outputText value="Question [#{exercise.questionOrder}]" 
							/>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="color: #FFFFFF;  background-color: #666699; 
					font-family: Verdana, Arial, Sans-Serif; font-size:15px;
					height:30px; line-height: 30px; 
					boarder:1; ">
						<div id="question_div" style="margin:5px;">
						<h:outputText value="#{exercise.questionText}"  escape="false"
							/>
						</div>	
						</td>
					</tr>


					<tr>
						<td colspan="2" align="center">
							<h:graphicImage url="#{exercise.questionImageURL}" rendered="#{exercise.questionImageURL.length()>1?true:false}" />							
							<br/>
						</td>
					</tr>


					<tr>
						<td colspan="2"><h:inputText
								value="#{exercise.tempInputFill}"
								rendered="#{exercise.fillQuestion}" /></td>
					</tr>

					<tr>
						<td colspan="2" align="left">
						<h:dataTable id="questions"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{exercise.answersDM}"
								rows="#{exercise.rowCount}"
								rowClasses="odd_row,even_row">

								<h:column >

									<h:selectBooleanCheckbox  value="#{trows.selected}" />
									
									[<h:outputText value="#{trows.id}" />]&nbsp;&nbsp;&nbsp;       
									
									<h:outputText value="#{trows.answerText}" escape="false" />
						
									
		                                      
							</h:column>
							<h:column>
							<h:graphicImage url="#{trows.answerImageUrl}"  rendered="#{trows.answerImageUrl.length()>1?true:false}" />							

								</h:column>

							</h:dataTable></td>
					</tr>
					<tr>
						<td colspan="2"><h:outputText
								value="Question is Correctly Answered .." style="color:green"
								rendered="#{exercise.showCorrectAnswerMessage}" /> <h:outputText
								value="Question is Wrongly Answered .." style="color:red"
								rendered="#{exercise.showWrongAnswerMessage}" /></td>
					</tr>

					<tr>
						<td colspan="2" align="left"><h:dataTable id="correctAnswers"
								width="97%" frame="below" cellpadding="0" cellspacing="0"
								var="correctAnswer" value="#{exercise.correctAnswersDM}"
								rows="#{exercise.correctAnswersrowCount}"
								rendered="#{exercise.displayMode.indexOf(\"review\")>=0}"
								rowClasses="odd_row,even_row">
								<h:column>

									<f:facet name="header">
										<h:outputText value="Correct Answer .." />
									</f:facet>
									[<h:outputText value="#{correctAnswer.id}" />]&nbsp;&nbsp;&nbsp;
									<h:outputText value="#{correctAnswer.answerText}" escape="false"/>


								</h:column>
							</h:dataTable></td>
					</tr>

					<tr>

						<td colspan="2"><h:inputText
								value="#{exercise.tempCorrectFill}"
								rendered="#{exercise.fillQuestion && (exercise.displayMode.indexOf(\"review\")>=0)}" />
						</td>
					</tr>



				</table>
				<h:panelGrid border="0" columns="3">
					<h:commandButton id="previous" value="Previous Question"
						action="#{exercise.moveToPreviousQuestion}"
						rendered="#{exercise.notFirstQuestion && (exercise.displayMode.indexOf(\"summary\")<0) }"></h:commandButton>

					<h:commandButton id="next" value="Next Question"
						action="#{exercise.moveToNextQuestion}"
						rendered="#{exercise.notLastQuestion}"></h:commandButton>

					<h:commandButton id="results" value="Show Results"
						action="#{exercise.showResults}"
						rendered="#{!exercise.notLastQuestion && (exercise.displayMode.equalsIgnoreCase(\"question\"))}"></h:commandButton>
						
							<h:commandButton id="close_review" value="Close"						
						action="#{exercise.close}"  rendered="#{exercise.displayMode.indexOf(\"review\")>=0}" >
					</h:commandButton>
					
				</h:panelGrid>


				<h:outputText value="#{exercise.result}"
					rendered="#{!exercise.notLastQuestion && (exercise.displayMode.equalsIgnoreCase(\"summary\"))}" />

				<h:panelGrid border="0" columns="3"
					rendered="#{!exercise.notLastQuestion && (exercise.displayMode.equalsIgnoreCase(\"summary\"))}">
					<h:commandButton id="review" value="Review Results"
						action="#{exercise.reviewMyAnswers}">
					</h:commandButton>
					<h:commandButton id="review_wrong" value="Review Wrong Questions"
						action="#{exercise.reviewMyWrongAnswers}" rendered="#{exercise.hasWrongAnswers}">
					</h:commandButton>

					<h:commandButton id="close_result" value="Close"						
						action="#{exercise.close}">
					</h:commandButton>
					
				</h:panelGrid>
				

			</div>
			
			<br>
			<h:panelGrid border="0" columns="2">
				<h:inputText value="#{exercise.testNote}" />
			
				<h:commandButton id="add_test_note" value="Add Note"						
						action="#{exercise.addTestNote}">
					</h:commandButton>
					</h:panelGrid>
					<br>
			
		</td>
			<!--  td id="right_area" style="vertical-align: top;">
				
			</td -->
			</tr>
			<!--  tr id="lower_row">
			<td colspan="3">
				<%@ include file="../../include/lower_section.jsp"%>
			</td>
			</tr -->
			</table>	
		</h:form>
	</f:view>
	
</body>
</html>