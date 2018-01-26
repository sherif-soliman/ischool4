<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<script type="text/javascript" src="../../scripts/calendar.js"></script>
<script type="text/javascript" src="../../scripts/calendar-en.js"></script>
<script type="text/javascript" src="../../scripts/calendar-setup.js"></script>
<link  href="../../css/calendar-win2k-cold-1.css" rel="stylesheet" type="text/css" media="all"/>

<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Activity Report... iSchool</title>

<script type="text/javascript">


function check_dates()
{
	var teachersObj=document.getElementById("activity:teachers");
	
	var from_date=document.getElementById("activity:fromDate").value;
	//alert(from_date);
	if(from_date.length<1)
	{
		teachersObj.value="";
		alert("Please, select from date ...");
		return false;
	}

	var to_date=document.getElementById("activity:toDate").value;
	//alert(to_date);
	if(to_date.length<1)
	{
		teachersObj.value="";
		alert("Please, select to date ...");
		return false;
	}
	var from_d = new Date(from_date);
	var to_d = new Date(to_date);

	if(from_d > to_d)
	{
		teachersObj.value="";
		alert("'To Date' must be greater than or equal 'From Date' ...");
		return false;
	}

	show_progress_bar();
}
</script> 

</head>
<body  class="main_body" onload="on_page_load();">

	<f:view>

		<h:form id="activity" onsubmit="return check_dates(); ">

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


						<div align="center" style="border: 0px solid black;">
						<div class="middle_menu_section" >
								<span>Teachers Activity Details ....</span>

							</div>
<br/><br/>


<table cellpadding="0" cellspacing="2px" width="100%" border="0"
			style="font-family: Verdana, Arial, Sans-Serif; font-size: 14px; vertical-align: top;" >

 
 <tr align="left" style="vertical-align: top;">
<td>
Teachers:
</td>		
						<td  colspan="2">
									
											
						<h:selectOneMenu id="teachers" value="#{activityReportBean.teachers.selectedValue}"
                                                     style="width:80%;" >                                                     
		                                      
		                                      
		                                      <f:selectItems value="#{activityReportBean.teachers.values}"/>
		                                 
		                                      
                        				</h:selectOneMenu>
                        				</td>
			
		</tr>	
			<tr align="left" style="vertical-align: top;">
<td>
From:
</td>		
<td >
	<h:inputText id="fromDate" value="#{activityReportBean.fromDate}" style="height:14px; width:80px;" disabled="false" >
	                              
	                           </h:inputText>
	                           <h:outputLink value="#" id="dateLink" >
                                  <h:graphicImage url="../../images/static/common/calendar.gif"
                                                  style="vertical-align:top; border-style: none;"/>
                                </h:outputLink>
                                <script type="text/javascript">
                                  
                                                  Calendar.setup ({inputField : "activity:fromDate", ifFormat : "%Y-%m-%d", showsTime : false, button : "activity:dateLink", singleClick : true, step : 1});
                                        </script>	
					</td>
					<td ></td>
	
</tr>
		<tr align="left" style="vertical-align: top;">
<td>
To:
</td>		
		
<td>
	<h:inputText id="toDate" value="#{activityReportBean.toDate}" style="height:14px; width:80px;" disabled="false" >
	                              
	                           </h:inputText>
	                           <h:outputLink value="#" id="dateLink2">
                                  <h:graphicImage url="../../images/static/common/calendar.gif"
                                                  style="vertical-align:top; border-style: none;"/>
                                </h:outputLink>
                                <script type="text/javascript">
                                  
                                                  Calendar.setup ({inputField : "activity:toDate", ifFormat : "%Y-%m-%d", showsTime : false, button : "activity:dateLink2", singleClick : true, step : 1});
                                        </script>	
					</td>
					<td >
									
			
                        				</td>
			
		</tr>	
		
		
		
	<tr align="left">
	<td colspan="3" align="center"><br/>
	
		<h:commandButton id="refresh_report" value="Refresh"
						action="#{activityReportBean.refreshReport}"
						style="font-family: Verdana, Arial, Sans-Serif; font-size:15px; 
						color:black; "
						>
						
						</h:commandButton>
	
	</td>
	</tr>
		

                        				</table>
                        				
                        				
<br/><br/>
                        				
							<div class="middle_menu_section" >
								<span>Questions Activity Details ....</span>

							</div>
							<br/>
							<h:outputText id="questions" value="#{activityReportBean.questionsReportContent}" escape="false"> </h:outputText>					
						<br/><br/>	
							
						<div class="middle_menu_section" >
								<span>Exercise Activity Details ....</span>

							</div>
							<br/>
							<h:outputText id="exercises" value="#{activityReportBean.exerciseReportContent}" escape="false"> </h:outputText>					

						<br/><br/>	
							
						<div class="middle_menu_section" >
								<span>Exam Activity Details ....</span>

							</div>
							<br/>
							<h:outputText id="exams" value="#{activityReportBean.examReportContent}" escape="false" > </h:outputText>					

						<br/><br/>	
							
						<div class="middle_menu_section" >
								<span>Homework Activity Details ....</span>

							</div>
							<br/>
							<h:outputText id="homeworks" value="#{activityReportBean.homeworkReportContent}" escape="false"> </h:outputText>					
												
							
							
						<br/><br/>	
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