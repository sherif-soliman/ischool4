<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Exercise Details... iSchool</title>

<script type="text/javascript">

function adjust_arabic_question()
{                

	
	var obj=document.getElementById('question_div');
	var arabic = /[\u0600-\u06FF]/;
    var string = obj.value;
    //alert('str:'+string);
    if(string == null || string == "" )
	{
    	//alert('div');
    	string=obj.innerHTML;
	}
    if(arabic.test(string))
    {
    	//document.body.setAttribute('dir', 'rtl')            
    	obj.dir="rtl";
    }
    else
    {
    	//document.body.setAttribute('dir', 'ltr')
        obj.dir="ltr";
    }
}
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

function validate_selection()
{

	//alert( 'Hi' );
	var ans_A =document.getElementById('question_form:questions:0:answer_check');
	var ans_B =document.getElementById('question_form:questions:1:answer_check');
	var ans_C =document.getElementById('question_form:questions:2:answer_check');
	var ans_D =document.getElementById('question_form:questions:3:answer_check');
	var ans_E =document.getElementById('question_form:questions:4:answer_check');
	var ans_F =document.getElementById('question_form:questions:5:answer_check');
	
	
	//alert( ans_A);
	var fill_answer =document.getElementById('question_form:fill_value');
	//alert( fill_answer);
	    
	    if ( (ans_A!=null && ans_A.checked) ||  (ans_B!=null && ans_B.checked) ||  (ans_C!=null && ans_C.checked)
	    		 ||  (ans_D!=null && ans_D.checked) ||  (ans_E!=null && ans_E.checked) ||  (ans_F!=null && ans_F.checked)
	    		 ||  (fill_answer!=null && fill_answer.value !=null && fill_answer.value !="") )
	    	 
	    { // force studnet to enter his answer
	    	//alert( 'return true' );
	    	return true; // submit
	    }else
	    {
	    	
	    	alert( 'Please select specfiy your answer' );
	        return false; // don't submit
	    }
	
}

</script>

</head>
<body onload="on_page_load(); resizeQuestionImage(); adjust_arabic_question ();">

	<f:view>

		<h:form id="question_form" onsubmit="show_progress_bar()">
			
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
			

			<div align="center" style=" border: 0px solid black;" >

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
						&nbsp;<h:outputText value="Question [#{exercise.questionOrder}] Ref: #{exercise.questionReference}" />
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
						<td colspan="2" align="left">
						
						<table width="100%">
							<tbody>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td>
							<h:graphicImage url="#{exercise.questionImageURL}" 
								rendered="#{exercise.imagedQuestion}" />
							
							
				<br/>
			<h:outputLink value="#"  onclick="window.open('#{exercise.questionImageURL}');"
								rendered="#{exercise.filedQuestion}" >
								
							
									
										<h:outputText value="click here to open the file ..."></h:outputText>
										
								</h:outputLink>
			
			
									</td>
								</tr>
							</tbody>
						</table>										
							<br/>
						</td>
					</tr>


					<tr>
						<td colspan="2"><h:inputText id="fill_value"
								value="#{exercise.tempInputFill}"
								rendered="#{exercise.fillQuestion}" 
								disabled="#{exercise.displayMode.indexOf(\"review\")>=0}" 
								/>
							</td>
							
					</tr>

<tr>
						<td colspan="2">
							</td>
							
</tr>
					
					<tr>
						<td colspan="2" align="left">
						<h:dataTable id="questions" border="0"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{exercise.answersDM}"
								rows="#{exercise.rowCount}"
								rowClasses="odd_row,even_row" styleClass="question">
								

								<h:column>
							

									<h:panelGrid columns="3">							
									<h:selectBooleanCheckbox id="answer_check" value="#{trows.selected}" 
									disabled="#{exercise.displayMode.indexOf(\"review\")>=0}" />
									
									
									<h:outputText value="[#{trows.id}]" />       
									
									<h:outputText value="#{trows.answerText}" escape="false" />
									</h:panelGrid>
							
									
		                                      
							</h:column>
							<h:column >
							<h:outputText value="<div width='100%' style='border-top:1px solid #E6E6E6; border-bottom:1px solid gray; background-color: white;'>" escape="false"  rendered="#{trows.answerImageUrl.length()>1?true:false}"/>
								<h:graphicImage url="#{trows.answerImageUrl}"  rendered="#{trows.answerImageUrl.length()>1?true:false}" />							
							<h:outputText value="</div>" escape="false"  rendered="#{trows.answerImageUrl.length()>1?true:false}"/>
								</h:column>

							</h:dataTable></td>
					</tr>
					
					<tr>
						<td width="60%">
								<h:outputText value="Question is Correctly Answered .." style="color:green"
								rendered="#{exercise.showCorrectAnswerMessage}" /> 
								
								<h:outputText value="Question is Wrongly Answered .." style="color:red"
								rendered="#{exercise.showWrongAnswerMessage}" />
								</td>
								
								<td>
								
									<h:graphicImage url="../../images/static/common/correct.jpg" width="30" rendered="#{exercise.showCorrectAnswerMessage}" />
							
								<h:graphicImage url="../../images/static/common/wrong.jpg" width="30" rendered="#{exercise.showWrongAnswerMessage}" />
								</td>
					</tr>
					
					
					
					<tr>
						<td colspan="2" align="left"><h:dataTable id="correctAnswers"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="correctAnswer" value="#{exercise.correctAnswersDM}"
								rows="#{exercise.correctAnswersrowCount}"
								rendered="#{exercise.displayMode.indexOf(\"review\")>=0}"
								rowClasses="odd_row,even_row" border="0">
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
<br/>
				<h:panelGrid border="0" columns="3" style="background-color:#ececec; width:100%">
				
					
					<h:commandButton id="previous" value="Previous Question"
						action="#{exercise.moveToPreviousQuestion}"
						disabled="#{!(exercise.notFirstQuestion && (exercise.displayMode.indexOf(\"summary\")<0)) }"></h:commandButton>
					
					
					<h:commandButton id="next" value="Next Question"
						action="#{exercise.moveToNextQuestion}"
						disabled="#{!(exercise.notLastQuestion)}"
						onclick="return validate_selection();"
						>
						</h:commandButton>

					<h:commandButton id="results" value="I'm Done"
						action="#{exercise.showResults}"
						disabled="#{!(!exercise.notLastQuestion && (exercise.displayMode.equalsIgnoreCase(\"question\")))}"
						onclick="return validate_selection();"
						></h:commandButton>
						
							<h:commandButton id="close_review" value="Close"						
						action="#{exercise.close}"  rendered="#{exercise.displayMode.indexOf(\"review\")>=0}" >
					</h:commandButton>
					
				</h:panelGrid>


				<h:outputText value="#{exercise.result}"
					rendered="#{!exercise.notLastQuestion && (exercise.displayMode.equalsIgnoreCase(\"summary\"))}" />

				<h:panelGrid border="0" columns="3"
					rendered="#{!exercise.notLastQuestion && (exercise.displayMode.equalsIgnoreCase(\"summary\"))}">
					<h:commandButton id="review" value="Review"
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
			<h:panelGrid border="0" columns="2" rendered="#{security.isAuthorized('question.add_note')}">
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