<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<script type="text/javascript" src="../../scripts/calendar.js"></script>
<script type="text/javascript" src="../../scripts/calendar-en.js"></script>
<script type="text/javascript" src="../../scripts/calendar-setup.js"></script>
<link  href="../../css/calendar-win2k-cold-1.css" rel="stylesheet" type="text/css" media="all"/>

<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>My Page ... iSchool</title>


<script type="text/javascript">

function Check_inputs()
{

	var class_name=document.getElementById("followup_form:classNames").value;
	var user_name=document.getElementById("followup_form:users").value;
	
	//alert(class_name);
	if(class_name.length<3 && user_name.length<3)
	{
		alert("Please, select the target class name or user ...");
		return false;
	}
	var expire_date=document.getElementById("followup_form:expireDate").value;
	//alert(expire_date);
	if(expire_date.length<1)
	{
		alert("Please, select the expire date ...");
		return false;
	}
	
	
	var d = new Date(expire_date);
	
	
	
	//var today = new Date();
	
	 var temp_today = new Date(),
     month = '' + (temp_today.getMonth() + 1),
     day = '' + temp_today.getDate(),
     year = temp_today.getFullYear();

 if (month.length < 2) month = '0' + month;
 if (day.length < 2) day = '0' + day;
 
 var today_str = year+"-"+month+"-"+day;
 var today =new Date(today_str);
 //var today = new Date();
 
	if(d< today || expire_date.length<10)
  	{
  		alert("Please, select a valid expire date ...");
  		return false;
  	}
		
	
}
</script> 

</head>
<body onload="on_page_load();">

	<f:view>

		

			<table border="0" width="100%" >
				<!--  tr id="top_row">
			<td colspan="3" >
				< %@ include file="../../include/top_section.jsp"%>
			</td>
			</tr-->
				<tr id="main_row">
					<!--  td id="left_area" style="vertical-align: top;" >
				
			</td -->
					<td id="middle_area" style="vertical-align: top;" width="55%">


						<div align="center" style="border: 0px solid black;">


							<div class="middle_menu_section" >
								<span>Follow Up...</span>

							</div>
		<h:form id="followup_form"  onsubmit="show_progress_bar();">					
							<h:panelGroup rendered="#{security.isAuthorized('student_filter')}">
							
							<table width="100%" border="0" style="font-family: Verdana, Arial, Sans-Serif; font-size:12px;" >
								<tr>
									<td align="left" colspan="4"><h:graphicImage
											url="../../images/dynamic/users/profile/#{loginBean.userProfile.schoolId}/#{loginBean.userName}"
											width="40"></h:graphicImage></td>
								</tr>

								<tr>
									<td align="left" colspan="4"><h:inputTextarea
											value="#{followup.newFollowUpMsg}" style="width:98%;" /></td>

								</tr>

<tr>
									<td align="left" colspan="4"><br/></td>
								</tr>

								<tr align="left">

									<td>Send To:</td>
									<td>
										<h:selectOneMenu id="classYears" value="#{followup.classYears.selectedValue}"
                                                     style="width:160px;" >                                                     
		                                      
		                                      
		                                      <f:selectItems value="#{followup.classYears.values}"/>
		                                      <a4j:support  event="onchange" actionListener="#{followup.onClassYearsChange}"  reRender="classNames, users" oncomplete="hide_progress_bar();"/>
		                                      
                        				</h:selectOneMenu>
									</td>
									<td>Class:</td>
									<td>
									<h:selectOneMenu id="classNames"
                                                     value="#{followup.classNames.selectedValue}"
                                                     style="width:160px;"  >                                                     		                                      
		                                      
		                                      <f:selectItems value="#{followup.classNames.values}"/>
		                                      <a4j:support  event="onchange" actionListener="#{followup.onClassNamesChange}"  reRender="users" oncomplete="hide_progress_bar();" />
                        				</h:selectOneMenu>	
						<h:outputText></h:outputText>																			
															
								</td>
</tr>
<tr align="left">
<td>
User:
</td>
<td>
									<h:selectOneMenu id="users"
                                                     value="#{followup.users.selectedValue}"
                                                     style="width:160px;" >                                                     
		                                      
		                                      
		                                      <f:selectItems value="#{followup.users.values}"/>
		                                      <a4j:support  event="onchange" actionListener="#{followup.onUsersChange}"  reRender="exercises_top_reports , exam_top_reports , homework_top_reports" oncomplete="hide_progress_bar();"/>
		                                      
                        				</h:selectOneMenu>
									
									
									
	
</td>
<td></td>
<td>
	<h:inputText id="expireDate" value="#{followup.expireDate}" style="height:14px; " disabled="false">
	                              
	                           </h:inputText>
	                           <h:outputLink value="#" id="dateLink">
                                  <h:graphicImage url="../../images/static/common/calendar.gif"
                                                  style="vertical-align:top; border-style: none;"/>
                                </h:outputLink>
                                <script type="text/javascript">
                                //alert('hiii');
                                                  //Calendar.setup ({inputField : "practice_form:dueDate", ifFormat : "%Y-%m-%dT%k:%M:%S:00", showsTime : true, button : "practice_form:dateLink", singleClick : true, step : 1});
                                                  Calendar.setup ({inputField : "followup_form:expireDate", ifFormat : "%Y-%m-%d", showsTime : false, button : "followup_form:dateLink", singleClick : true, step : 1});
                                        </script>	
					</td>
								</tr>
								<tr>

									<td colspan="4"></td>
								</tr>
								<tr>

									<td colspan="4"></td>
								</tr>
				<tr align="left">

									<td><h:commandButton id="save" value="Send"
											action="#{followup.save}" onclick="return Check_inputs();"
											style="font-family: Verdana, Arial, Sans-Serif; font-size:15px; 
						color:black; "></h:commandButton>


									</td>

									<td colspan="3">
									 <% /*
									<h:inputFile value="#{followup.part}"
											style="font-family: Verdana, Arial, Sans-Serif; font-size:15px; 
						color:black; "></h:inputFile>
						*/%>
									</td>


								</tr>

							</table>
						
							<br />
							<div class="middle_menu_section" >
								<span>Follow Ups ...</span>
							</div>
				</h:panelGroup>
				</h:form>
				<h:form onsubmit="show_progress_bar();">
				<br/>
				
					<h:panelGroup rendered="#{security.isAuthorized('followup.teacher_filter')}">
						
							<table cellpadding="0" cellspacing="2px" width="100%">

								<tr align="center">
									<td ></td>
									<td>
						<h:selectOneMenu id="teachers" value="#{followup.teachers.selectedValue}"
                                                     style="width:160px;" >                                                     
		                                      
		                                      
		                                      <f:selectItems value="#{followup.teachers.values}"/>
		                                      <a4j:support  event="onchange" actionListener="#{followup.onTeachersChange}"  reRender="followups" oncomplete="hide_progress_bar();"/>
		                                      
                        				</h:selectOneMenu>
                        				</td>
                        				</tr>
                        				</table>
                        				</h:panelGroup>
                        				
							<table cellpadding="0" cellspacing="2px" width="100%">

								<tr>
									<td width="40%"></td>
									<td width="60%" align="left"><h:messages id="messages"
											errorClass="error_msg" infoClass="info_msg"
											warnClass="warning_msg" /></td>
								</tr>
								<tr>
									<td colspan="2"></td>
								</tr>
								<tr>
									<td colspan="2" align="left">
									<h:dataTable id="followups"
											width="100%" frame="below" cellpadding="4" cellspacing="0"
											var="trows" value="#{followup.teacherFollowUpsDM}"
											rows="#{followup.teacherFollowUpsDM.rowCount}" rowClasses="odd_row"
											border="0" style="vertical-align:top;">

											<h:column>
												<h:outputText
													value="<table id='followup_item' width='100%' border='0px' style='background-color: white;'><tr>"
													escape="false" />
												<h:outputText
													value="<td width='40' style='vertical-align:top;'>"
													escape="false" />
												<h:graphicImage
													url="../../images/dynamic/users/profile/#{loginBean.userProfile.schoolId}/#{trows.userName}"
													width="40"></h:graphicImage>
												<h:outputText value="</td>" escape="false" />
												<h:outputText value="<td >" escape="false" />
												<b><h:outputText value="#{trows.name} "
														style="color: #0000CC;  
										font-family: Verdana, Arial, Sans-Serif; font-size:13px;" />
													<styless="color:gray;">added ...</styless> </b>
										<h:outputText value=" Deleted" rendered="#{trows.status.equals('Inactive')}"
														style="color: red;  
										font-family: Verdana, Arial, Sans-Serif; font-size:13px;" />
										<br/><h:outputText value=" Published On #{trows.creationDate} "
														style="color: red;  
										font-family: Verdana, Arial, Sans-Serif; font-size:13px;" />
										<h:outputText value=" Expired On #{trows.expireDate} "
														style="color: #0000CC;  
										font-family: Verdana, Arial, Sans-Serif; font-size:13px;" />
																										
												<br />
												<h:outputText value="#{trows.followUp}"
													style="color: #3A3A3A;  
										font-family: Verdana, Arial, Sans-Serif; font-size:13px; " />
												<h:outputText value="</td>" escape="false" />
												<h:outputText value="</tr>" escape="false" />
												<h:outputText value="<tr ><td colspan='2' align='center'>"
													escape="false" rendered="#{trows.imaged}" />



												<h:graphicImage id="post_image"
													url="../../images/dynamic/users/posts/#{trows.id}" alt=" "
													rendered="#{trows.imaged}" width="100%"></h:graphicImage>
												<h:outputText value="</td></tr>" escape="false"
													rendered="#{trows.imaged}" />
												<h:outputText value="</table>" escape="false" />

											</h:column>
							
								<h:column >
							
								<h:commandButton image="../../images/static/common/delete.png"
									rendered="#{trows.getUserName().equals(followup.getUserName()) && trows.status.equals('Active')}" action="#{followup.deactivateFollowup}"
								style="width:20px"
									alt="Deactivate" >
								
								  	<f:param name="followupId" value="#{trows.id}" ></f:param>
								 	<f:param name="hasImage" value="#{trows.imaged}" ></f:param>
								 	
								 
								 </h:commandButton>
								</h:column>

										</h:dataTable></td>
								</tr>

							</table>
</h:form>
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
	
	</f:view>
</body>
</html>