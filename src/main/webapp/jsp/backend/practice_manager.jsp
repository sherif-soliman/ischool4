<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<script type="text/javascript" src="../../scripts/calendar.js"></script>
<script type="text/javascript" src="../../scripts/calendar-en.js"></script>
<script type="text/javascript" src="../../scripts/calendar-setup.js"></script>
<link  href="../../css/calendar-win2k-cold-1.css" rel="stylesheet" type="text/css" media="all"/>

<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Manage Practice ... iSchool</title>

<script type="text/javascript">
var last_focused;
function set_last_focused(comp)
{
	//alert(last_focused);
	last_focused=comp;
}
function onPracticeTypeChange()
{

	var practice_type=document.getElementById('practice_form:type').value;
	if(practice_type == "Exam")
	{
		document.getElementById('homework_row').style.display="none";
		//document.getElementById('practice_form:copyHomeworkLink').style.display="none";
		
		//document.getElementById('practice_form:units').style.display="none";
		//document.getElementById('practice_form:unitsTitle').style.display="none";
		//document.getElementById('practice_form:lessons').style.display="none";
		//document.getElementById('practice_form:lessonsTitle').style.display="none";
	}else if(practice_type == "Exercise")
	{
		document.getElementById('homework_row').style.display="none";
		//document.getElementById('practice_form:copyHomeworkLink').style.display="none";
		//document.getElementById('practice_form:units').style.display="";
		//document.getElementById('practice_form:unitsTitle').style.display="";
		//document.getElementById('practice_form:lessons').style.display="";
		//document.getElementById('practice_form:lessonsTitle').style.display="";
	}if(practice_type == "HomeWork")
	{
		document.getElementById('homework_row').style.display="";
		//document.getElementById('practice_form:copyHomeworkLink').style.display="";
		//document.getElementById('practice_form:units').style.display="";
		//document.getElementById('practice_form:unitsTitle').style.display="";
		//document.getElementById('practice_form:lessons').style.display="";
		//document.getElementById('practice_form:lessonsTitle').style.display="";
	}
}

function updateQuestionReviewContent()
{
	//var content=document.getElementById('ques_form:question_text').value;
	var content=last_focused.value;
	//alert(content);
	content=content.replace (/&lt;/g,'<');
	content=content.replace (/&gt;/g,'>');
	content=content.replace (/&amp;/g,'&');
	document.getElementById('question_text_review').innerHTML=content;
//	alert(document.getElementById('question_text_review').value);
//	alert ('6');
}

function on_mcq_click()
{
	clear_fill();
	
	document.getElementById('fill_row').style.display='none'; 
	document.getElementById('mcq_answers_1').style.display='';
	document.getElementById('mcq_answers_2').style.display='';
	document.getElementById('mcq_answers_3').style.display='';
	//document.getElementById('ques_form:correct_fill').value='';
	
}

function on_sheet_click()
{
	clear_fill();
	
	document.getElementById('fill_row').style.display='none'; 
	document.getElementById('mcq_answers_1').style.display='';
	document.getElementById('mcq_answers_2').style.display='none';
	document.getElementById('mcq_answers_3').style.display='';
	document.getElementById('ques_form:question_text').value='Please solve the attached sheet.';
	document.getElementById('ques_form:answer_1').value='Thanks, I completed this practice.';
	document.getElementById('ques_form:correct_answer').value='A';
	
}

function on_bool_click()
{
	clear_fill();
	document.getElementById('mcq_answers_1').style.display='';
	document.getElementById('mcq_answers_2').style.display='none';
	document.getElementById('mcq_answers_3').style.display='';
	document.getElementById('ques_form:answer_1').value='True'; 
	document.getElementById('ques_form:answer_2').value='False';	
}
function on_fill_click()
{
	clear_non_fill();
	
	document.getElementById('mcq_answers_1').style.display='none';
	document.getElementById('mcq_answers_2').style.display='none';
	document.getElementById('mcq_answers_3').style.display='none';
	document.getElementById('fill_row').style.display='';
	
	//document.getElementById('ques_form:answer_1').value='';
	//document.getElementById('ques_form:answer_2').value='';
	//document.getElementById('ques_form:answer_3').value='';
	//document.getElementById('ques_form:answer_4').value='';
	//document.getElementById('ques_form:answer_5').value='';
	//document.getElementById('ques_form:answer_6').value='';
}

function clear_fill()
{	
	document.getElementById('ques_form:correct_fill').value='';	
}

function clear_non_fill()
{
	//document.getElementById('ques_form:question_text').value=''; 
	
	document.getElementById('ques_form:correct_answer').value='';
	document.getElementById('ques_form:answer_1').value='';
	document.getElementById('ques_form:answer_2').value='';
	document.getElementById('ques_form:answer_3').value='';
	document.getElementById('ques_form:answer_4').value='';
	document.getElementById('ques_form:answer_5').value='';
	document.getElementById('ques_form:answer_6').value='';
}

function on_copy_homework_click()
{
	document.getElementById('copy_homework_row1').style.display='';
	document.getElementById('copy_homework_row2').style.display='';
	document.getElementById('copy_homework_row3').style.display='';

}

function Check_date(fld)
{
	//alert("hi");
	//alert(document.getElementById("practice_form:type").value);
	if(document.getElementById("practice_form:type").value !="HomeWork")
	{// this is not a homework so no need to check the due date
		return true;
	}
	var due_date=document.getElementById(fld).value;
	//alert(due_date);
	
	if(due_date.length<1)
	{
		alert("Please, select the due date ...");
		return false;
	}
	
	var d = new Date(due_date);
	//var today = new Date();
	
	 var temp_today = new Date(),
     month = '' + (temp_today.getMonth() + 1),
     day = '' + temp_today.getDate(),
     year = temp_today.getFullYear();

 if (month.length < 2) month = '0' + month;
 if (day.length < 2) day = '0' + day;
 
 var today_str = year+"-"+month+"-"+day;
 var today =new Date(today_str);
 
	//alert(today);
	//alert(d);
	
	if(d< today || due_date.length<10)
  	{
		alert("Please, select a valid due date ...");
  		return false;
  	}
	return true;		
}

function validate_inputs()
{
	
	
	if(!Check_date('practice_form:dueDate'))
	{
		return false;
	}else
	{
	
		//alert( 'check2' );
		
		var correct_answer =document.getElementById('ques_form:correct_answer');
	//alert(correct_answer.value );
		var correct_fill =document.getElementById('ques_form:correct_fill');
	
		//alert( correct_fill.value );
	
		var ques_type = document.getElementsByName('ques_type');
	var ques_type_value;
	for(var i = 0; i < ques_type.length; i++){
	    if(ques_type[i].checked){
	    	ques_type_value = ques_type[i].value;
	    }
	}	
	
	//var ques_type=document.getElementByName('ques_type').value;
	//alert( 'q t' +ques_type_value );	
	 if ( ( (ques_type_value=="bool" || ques_type_value=="mcq" || ques_type_value=="sheet" ) && correct_answer!=null && correct_answer.value !=null && correct_answer.value !="")
    		 ||  ( ques_type_value=="fill" && correct_fill!=null && correct_fill.value !=null && correct_fill.value !="") )

		    	 
		    { // ask teacher to specify the correct answer
		//alert( 'return true' );
		    	return true; // submit
		    }else
		    {
		    	
		    	alert( 'Please select specfiy the correct answer' );
		        return false; // don't submit
		    }
		
	}	
}
</script>

</head>
<body onload="on_page_load(); onPracticeTypeChange();">

	<f:view>

		

			<table border="0" width="100%">
				<!-- tr id="top_row">
					<td colspan="3" background="gray"><%@ include
							file="../../include/top_section.jsp"%></td>
				</tr -->
				<tr id="main_row">
					<!-- td id="left_area" style="vertical-align: top;"></td-->
					<td id="middle_area" style="vertical-align: top;" width="100%">


						<div align="center" style="border: 0px solid black;">


							<div class="middle_menu_section" >
								<span>Practice Details ...</span>

							</div>
							<br/> 
	<h:form id="practice_form" onsubmit="document.getElementById('question_details').style.display=''; show_progress_bar();" >
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
                                                     style="width:98%;"  onchange="onPracticeTypeChange();">                                                     
		                                      <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onPracticeTypeChange}"  reRender="schools"  oncomplete="hide_progress_bar();"/>
		                                      
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
		                                      <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onSchoolsChange}"  reRender="classYears"  oncomplete="hide_progress_bar();"/>
		                                      
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
		                                      <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onClassYearsChange}"  reRender="classNames, subjects" oncomplete="hide_progress_bar();onPracticeTypeChange();"/>
		                                      
		                                      <f:selectItems value="#{practiceMgrBean.classYears.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
											
									<td align="left" >
									Subject:
									</td>
									<td align="left" >
										<h:selectOneMenu id="subjects"
                                                     value="#{practiceMgrBean.subjects.selectedValue}"
                                                     style="width:98%;" >                                                     
		                                      <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onSubjectsChange}"  reRender="units" oncomplete="hide_progress_bar();"/>
		                                      
		                                      <f:selectItems value="#{practiceMgrBean.subjects.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
									
								</tr>
	
								
								
								<tr>
									<td align="left" >
									<h:outputText id="unitsTitle" value="Unit:"> </h:outputText>
									
									</td>
									<td align="left" >
										<h:selectOneMenu id="units"
                                                     value="#{practiceMgrBean.units.selectedValue}"
                                                     style="width:98%;" >                                                     
		                                      <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onUnitsChange}"  reRender="lessons,ques_lessons" oncomplete="hide_progress_bar();"/>
		                                      
		                                      <f:selectItems value="#{practiceMgrBean.units.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
											
									<td align="left">
									
									<h:outputText id="lessonsTitle" value="Lesson:"> </h:outputText>
									</td>
									<td align="left" >
										<h:selectOneMenu id="lessons"
                                                     value="#{practiceMgrBean.lessons.selectedValue}"
                                                     style="width:98%;" >                                                     		                              
                                                      <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onLessonsChange}" reRender="ques_lessons" oncomplete="hide_progress_bar();"/>        
		                                      <f:selectItems value="#{practiceMgrBean.lessons.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
								</tr>
									

				

							
	
	<tr id="homework_row">
												<td align="left" >
									
									<h:outputText id="classNamesTitle" value="Class:" > </h:outputText>
									</td>
									<td align="left" >
									<h:selectOneMenu id="classNames"
                                                     value="#{practiceMgrBean.classNames.selectedValue}"
                                                     style="width:98%;" >                                                     		                                      
		                                      <f:selectItems value="#{practiceMgrBean.classNames.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
									<td align="left">
									
										<h:outputText id="DueInTitle" value="Due In:"> </h:outputText>
									</td>
	                           <td align="left">
	                           <h:inputText id="dueDate" value="#{practiceMgrBean.dueDate}" style="height:14px; ">
	                              <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onDueDateChange}" oncomplete="hide_progress_bar();"/>
	                           </h:inputText>
	                           <h:outputLink value="#" id="dateLink">
                                  <h:graphicImage url="../../images/static/common/calendar.gif"
                                                  style="vertical-align:top; border-style: none;" />
                                </h:outputLink>
                                <script type="text/javascript">
                                //alert('hiii');
                                                  //Calendar.setup ({inputField : "practice_form:dueDate", ifFormat : "%Y-%m-%dT%k:%M:%S:00", showsTime : true, button : "practice_form:dateLink", singleClick : true, step : 1});
                                                  Calendar.setup ({inputField : "practice_form:dueDate", ifFormat : "%Y-%m-%d", showsTime : false, button : "practice_form:dateLink", singleClick : true, step : 1});
                                        </script>
                                        
                                           
                                        						</td>
								</tr>
		
							
								<tr>
									<td></td>
									<td >
									<br/><br/>
									
								
							<h:commandButton id="add_practice" value="Add New Practice"
												action="#{practiceMgrBean.addNewPractice}" style="display:none;">
							</h:commandButton>

									
							
							
							
									<br/><br/>
									
									</td>
									
									
										<td>
																			<br/><br/>
									

									<br/><br/>
									
										</td>
									<td >
									<br/><br/>
									
								
							<h:commandButton id="search_practice" value="Search Practice"
												action="#{practiceMgrBean.openPracticeSearch}" >
							</h:commandButton>

							
									<br/><br/>
									
									</td>
									
									
								</tr>
<tr>
									<td colspan="3"></td>
																		<td >
									
								
							<h:outputLink id="copyHomeworkLink" value="#"
												style="display:;">
												Copy To Homework
				                  <a4j:support  event="onclick" actionListener="#{practiceMgrBean.fillClassesToCopyHomework}" oncomplete="hide_progress_bar(); on_copy_homework_click();"
				                      reRender="classNames2"
				                  />
	            
							</h:outputLink>

							
									<br/><br/>
									
									</td>
									
									
								</tr>

				<tr id="copy_homework_row1" style="display:none;">
									<td colspan="4">
									<br/>
									<font color="red">Note: Save the homework copy only after completion of adding questions or <br/>after searching for old practice ...</font>									
									<br/>
									</td>
									
									
								</tr>
								
<tr id="copy_homework_row2" style="display:none;">
												<td align="left" >
									
									<h:outputText value="Class:" > </h:outputText>
									</td>
									<td align="left" >
									<h:selectOneMenu id="classNames2"
                                                     value="#{practiceMgrBean.classNamesForCopyHomework.selectedValue}"
                                                     style="width:98%;" >                                                     		                                      
		                                      <f:selectItems value="#{practiceMgrBean.classNamesForCopyHomework.values}"/>
		                                      
                        				</h:selectOneMenu>
									</td>
									<td align="left">
									
										<h:outputText value="Due In:"> </h:outputText>
									</td>
	                           <td align="left">
	                           <h:inputText id="dueDate2" value="#{practiceMgrBean.newDueDate}" style="height:14px; ">
	                              <a4j:support  event="onchange" actionListener="#{practiceMgrBean.onDueDateChange}" oncomplete="hide_progress_bar();"/>
	                           </h:inputText>
	                           <h:outputLink value="#" id="dateLink2">
                                  <h:graphicImage url="../../images/static/common/calendar.gif"
                                                  style="vertical-align:top; border-style: none;"/>
                                </h:outputLink>
                                <script type="text/javascript">
                                //alert('hiii');
                                                  //Calendar.setup ({inputField : "practice_form:dueDate", ifFormat : "%Y-%m-%dT%k:%M:%S:00", showsTime : true, button : "practice_form:dateLink", singleClick : true, step : 1});
                                                  Calendar.setup ({inputField : "practice_form:dueDate2", ifFormat : "%Y-%m-%d", showsTime : false, button : "practice_form:dateLink2", singleClick : true, step : 1});
                                        </script>
                                        
                                           
                                        						</td>
								</tr>
								
								
								<tr id="copy_homework_row3" style="display:none;">
									<td></td>
									<td >
												
									</td>
									
									
									<td></td>
									<td >
									
								
							<h:commandButton value="Save Homework Copy"
												action="#{practiceMgrBean.saveHomeworkCopy}" onclick="return Check_date('practice_form:dueDate2');">
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
									Answer Time:
									</td>
									<td align="left" ><h:inputText
											value="#{practiceMgrBean.defaultAnswerTime}" style="width:94%;" /></td>
								</tr>

								<tr style="display:true;">
									<td align="left" >
										Sheet
										<input type="radio"  name="ques_type" value="sheet"	onclick="on_sheet_click();"  /></td>
									<td align="left" >
										True/False
										<input type="radio"  name="ques_type" value="bool"	onclick="on_bool_click();"  /></td>										 
									<td align="left">
										MCQ																			
										<input type="radio" checked="checked" name="ques_type" value="mcq"	 onclick="on_mcq_click();"   /></td>
									<td align="left">
										Fill																		
									<input type="radio" name="ques_type" value="fill"	onclick="on_fill_click();"  /></td>
								</tr> 
								<tr>
									<td colspan="4">
									
									</td>
								</tr>
								<tr>
									<td colspan="4">
									
									</td>
								</tr>
								<tr>
									<td colspan="4">
									
									</td>
								</tr>
								
								
								<tr id="question_text_td">
									<td align="left">
									Question Text:
									</td>
									<td align="left" colspan="3" ><h:inputTextarea id="question_text"
											value="#{practiceMgrBean.questionText}" style="width:98%;"
											onblur="set_last_focused(this)"/>
										<input type="button" id="review" value="Review"
											onclick="show('question_text_review_td'); updateQuestionReviewContent();" 
											/>
									</td>
									
								</tr >
								
								<tr id="question_text_review_td" style="display:none;"  >
									<td align="left">
									Review:
									</td>
									<td align="left" colspan="3"  >
										<output id="question_text_review"  style="width:98%;" > 
										</output>
									<br/><br/>
										<input type="button" id="edit" colspan="2" value="Back to Edit" 
											onclick="hide('question_text_review_td');" />
									</td>
								</tr>
								
								  
								<tr>
									<td align="left">
									Internal Note:
									</td>
									<td align="left" colspan="3" ><h:inputText
											value="#{practiceMgrBean.questionNote}" style="width:98%;" />
									</td>
								</tr>
								<tr>
									<td align="left">
									
									</td>
									<td align="left" colspan="3" >
									</td>
								</tr>
								<tr>
								<td></td>
								<td align="center" >
										<h:commandButton id="searchQuestions" value="Search Questions"
												action="#{practiceMgrBean.openQuestionSearch}" ></h:commandButton>											
									</td>
									<!-- 
									<td align="center"  >
												<input type="button" id="review" value="Review"
											onclick="hide('review');show('edit'); show('question_text_review'); updateQuestionReviewContent();" />
									
										<input type="button" id="edit" value="Edit" 
											style="display:none;" onclick="show('review');hide('edit'); hide('question_text_review'); " />
									</td>
								 -->
								 <td align="center">
								 			<input type="button" id="openeqn" value="Add Equation"
											onclick="document.getElementById('equation').style.display='';"	/>
								 
								 </td>
									<td align="center" style="width:11.5%;" >
										<input type="button" id="openSymbols" value="Add Symbol"
											onclick="document.getElementById('symbols').style.display='';"	/>
									</td>
								</tr>
								<tr id="formatting_td">
									<td align="left" colspan="4">
									
									</td>
								</tr>	
								<tr id="formatting_td">
									<td align="center">
									
									</td>
									<td align="center">
										<a id="bold" href="#" onclick="change_style('bold');" >
											Bold 
										</a>	
									</td>
									<td align="center">										
										<a id="bold" href="#" onclick="change_style('superset');" >
											Superset 
										</a>	
									</td>
									<td align="center"> 										
										<a id="bold" href="#" onclick="change_style('subset');" >
											Subset
										</a>
									</td>
									
								</tr>
							</table>
							
							<div id="symbols" style="display: none;" > 
							
							
							<%@ include file="symbols.jsp"%>
							 
							</div>
							
							<div id="equation" style="display: none;" > 
							
							
							<%@ include file="equation.jsp"%>
							 
							</div>
							
							
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
										<h:inputFile  value="#{practiceMgrBean.partQuestion}" rendered="#{practiceMgrBean.toggleFlag}" >						
											</h:inputFile>
										
										<h:inputFile  value="#{practiceMgrBean.partQuestion}" rendered="#{practiceMgrBean.reversedToggleFlag}" >						
											</h:inputFile>
										
											
										<!-- 	inp 2<input type="file" name="quesImageObj"/>  -->  	


									</td>
									<td width= "30%">     
									</td>
									<br/>
								</tr>
							</table>
							
							<table id="mcq_answers_1" width="100%" border="1" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >	
								<tr class="odd_row">
									<td align="left" style="width:25%;">
									Answer [A]:
									</td>
									<td align="left" colspan="2"><h:inputTextarea id="answer_1"
											value="#{practiceMgrBean.answer_1}" style="width:98%;" 
											onblur="set_last_focused(this)"/>
											</td>
									</tr>
									<tr class="odd_row">	
											<td>
											<h:graphicImage value="#{practiceMgrBean.answer_1ImageUrl}" width="30" height="30"/>
											</td>
									
									<td align="left">
										<h:commandButton  value="Public"
												action="#{practiceMgrBean.onClickAns1ImageLooker}"></h:commandButton>
									</td>
									
									<td align="right">
											
	<h:inputFile  value="#{practiceMgrBean.partAnswer_1}" rendered="#{practiceMgrBean.toggleFlag}" >						
											</h:inputFile>
										
										<h:inputFile  value="#{practiceMgrBean.partAnswer_1}" rendered="#{practiceMgrBean.reversedToggleFlag}" >						
											</h:inputFile>
									</td>
								</tr>
								<tr class="even_row">
								<td align="left" style="width:25%;">
									Answer [B]:
									</td>
								
									<td align="left" width="50%" colspan="2"><h:inputTextarea id="answer_2"
											value="#{practiceMgrBean.answer_2}" style="width:98%;"  
											onblur="set_last_focused(this)"/></td>
									
									
								</tr>
							</table>	
							
							<table id="mcq_answers_2" width="100%" border="1" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >
								<tr class="even_row">
								<td>
											<h:graphicImage value="#{practiceMgrBean.answer_2ImageUrl}" width="30" height="30"/>
											</td>
									<td align="left">
										<h:commandButton  value="Public"
												action="#{practiceMgrBean.onClickAns2ImageLooker}"></h:commandButton>
									</td>
									
									<td align="right">
											
	<h:inputFile  value="#{practiceMgrBean.partAnswer_2}" rendered="#{practiceMgrBean.toggleFlag}" >						
											</h:inputFile>
										
										<h:inputFile  value="#{practiceMgrBean.partAnswer_2}" rendered="#{practiceMgrBean.reversedToggleFlag}" >						
											</h:inputFile>
									</td>
								</tr>
								<tr class="odd_row">
								<td align="left" style="width:25%;">
									Answer [C]:
									</td>
									<td align="left" width="50%" colspan="2"><h:inputTextarea id="answer_3"
											value="#{practiceMgrBean.answer_3}" style="width:98%;"  
											onblur="set_last_focused(this)"/></td>
								</tr>
								<tr class="odd_row">
									<td>
											<h:graphicImage value="#{practiceMgrBean.answer_3ImageUrl}" width="30" height="30"/>
											</td>
									<td align="left">
										<h:commandButton  value="Public"
												action="#{practiceMgrBean.onClickAns3ImageLooker}"></h:commandButton>
									</td>
									
									<td align="right">
											
										<h:inputFile  value="#{practiceMgrBean.partAnswer_3}" rendered="#{practiceMgrBean.toggleFlag}" >						
											</h:inputFile>
										
										<h:inputFile  value="#{practiceMgrBean.partAnswer_3}" rendered="#{practiceMgrBean.reversedToggleFlag}" >						
											</h:inputFile>	

									</td>
								</tr>
								<tr class="even_row">
									<td align="left" style="width:25%;">
									Answer [D]:
									</td>
								
									<td align="left" width="50%" colspan="2"><h:inputTextarea id="answer_4"
											value="#{practiceMgrBean.answer_4}" style="width:98%;"  
											onblur="set_last_focused(this)"/></td>
								</tr>
								<tr class="even_row">
									<td>
								
											<h:graphicImage value="#{practiceMgrBean.answer_4ImageUrl}" width="30" height="30"/>
											</td>
									<td align="left">
										<h:commandButton  value="Public"
												action="#{practiceMgrBean.onClickAns4ImageLooker}"></h:commandButton>
									</td>
									
									<td align="right">
										<h:inputFile  value="#{practiceMgrBean.partAnswer_4}" rendered="#{practiceMgrBean.toggleFlag}" >						
											</h:inputFile>
										
										<h:inputFile  value="#{practiceMgrBean.partAnswer_4}" rendered="#{practiceMgrBean.reversedToggleFlag}" >						
											</h:inputFile>	


									</td>
								</tr>
								<tr class="odd_row">
									<td align="left" style="width:25%;">
									Answer [E]:
									</td>
								
									<td align="left" width="50%" colspan="2"><h:inputTextarea id="answer_5"
											value="#{practiceMgrBean.answer_5}" style="width:98%;"  
											onblur="set_last_focused(this)"/></td>
								</tr>
								<tr class="odd_row">
									<td>
											<h:graphicImage value="#{practiceMgrBean.answer_5ImageUrl}" width="30" height="30"/>
											</td>
									<td align="left">
										<h:commandButton  value="Public"
												action="#{practiceMgrBean.onClickAns5ImageLooker}"></h:commandButton>
									</td>
									
									<td align="right">
										<h:inputFile  value="#{practiceMgrBean.partAnswer_5}" rendered="#{practiceMgrBean.toggleFlag}" >						
											</h:inputFile>
										
										<h:inputFile  value="#{practiceMgrBean.partAnswer_5}" rendered="#{practiceMgrBean.reversedToggleFlag}" >						
											</h:inputFile>	
	

									</td>
								</tr>
								<tr class="even_row">
									<td align="left" style="width:25%;">
									Answer [F]:
									</td>
								
									<td align="left" width="50%" colspan="2"><h:inputTextarea id="answer_6"
											value="#{practiceMgrBean.answer_6}" style="width:98%;"  
											onblur="set_last_focused(this)"/></td>
								</tr>
								<tr class="even_row">
									<td>
											<h:graphicImage value="#{practiceMgrBean.answer_6ImageUrl}" width="30" height="30"/>
											</td>
									<td align="left">
										<h:commandButton  value="Public"
												action="#{practiceMgrBean.onClickAns6ImageLooker}"></h:commandButton>
									</td>
									
									<td align="right">
										<h:inputFile  value="#{practiceMgrBean.partAnswer_6}" rendered="#{practiceMgrBean.toggleFlag}" >						
											</h:inputFile>
										
										<h:inputFile  value="#{practiceMgrBean.partAnswer_6}" rendered="#{practiceMgrBean.reversedToggleFlag}" >						
											</h:inputFile>	
	

									</td>
								</tr>
								</table>
								<table id="mcq_answers_3" width="100%" border="1" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >
								<tr>
								
									<td align="left" colspan="3" ><br/></td>
								</tr>
								<tr>
									<td align="left">
									Correct Answers:
									</td>
									<td align="left" colspan="2" ><h:inputText id="correct_answer"
											value="#{practiceMgrBean.correctAnswers}" style="width:180px;"  /></td>
								</tr>




								
							</table>
					<br/>
							<table id="fill_row" width="100%" border="1" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px; display:none;" >	
							
								<tr >
									<td align="left">
									Correct Fill:
									</td>
									<td align="left" colspan="3" ><h:inputText id="correct_fill"
											value="#{practiceMgrBean.correctFill}" style="width:200px;" />
									</td>
								</tr>
							</table>

							<table id="ques_img" width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >	
							<tr>

								<tr>
									<td colspan="3"><h:panelGrid border="0" columns="4">
											<h:commandButton id="add_question" value="Add Question"
												action="#{practiceMgrBean.addQuestion}" onclick="window.parent.scrollTo(0, 0); return validate_inputs(); show_progress_bar(); "></h:commandButton>

											<h:commandButton id="update_question" value="Update Question"
												action="#{practiceMgrBean.updateQuestion}"></h:commandButton>
												
											
											<h:commandButton id="close_screen" value="Finish"
												action="#{practiceMgrBean.close}"></h:commandButton>

										</h:panelGrid></td>

								</tr>
							</table>
<br/><br/>
							</div>
</h:form>

						</div>
					</td>
					<!-- td id="right_area" style="vertical-align: top;">
					
					</td -->
				</tr>
				<!-- tr id="lower_row">
					<td colspan="3"><%@ include
							file="../../include/lower_section.jsp"%>
					</td>
				</tr -->
			</table>

	</f:view>

</body>

<script type="text/javascript">

   document.getElementById("ques_form:question_text").onkeydown=function()
   {
	   check_adjust_arabic (document.getElementById("ques_form:question_text"));
   };
</script>


</html>