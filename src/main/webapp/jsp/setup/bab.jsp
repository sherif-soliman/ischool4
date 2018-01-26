<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Setup Manager ... iSchool</title>

<script type="text/javascript">

function find_report(text)
{
	var code=text.value;
	//alert (code);
	if(code == "user_report")
	{
		//alert ("true");
		text.value="select * from users order by creation_date desc limit 40;";
		
		document.getElementById("j_id_jsp_538422550_1:run").click();
	}else if(code == "exercise_report")
	{
		//alert ("true");
		text.value="select u.name, concat(correct_questions,\"/\",total_questions) as \"Score\","+
		" r.creation_date, e.subject,e.class_year from exercise_reports r, users u, exercises e"+
		" where u.user_name=r.user_name and r.exercise_id=e.id"+
		" order by r.creation_date desc limit 40;";
		
		document.getElementById("j_id_jsp_538422550_1:run").click();
	}
	
	//alert ("false");
	//alert(text.value);
}
</script>

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
					<td id="middle_area" style="vertical-align: top;" width="100%">


						<div align="center" style="margin: 10px; border: 1px solid black;" width="100%">


							<div 
								style="color: #FFFFFF; background-color: #0033CC; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Setup ...</span>

							</div>
							<br/>
					<table align="left" width="100%" border="0">
					<tr>
					<td align="left" colspan="2" width="100%">
					
					<h:inputTextarea id="command" value="#{babBean.command}" style="height: 60px; width: 90%;" ondblclick="find_report(this);"/>
					
					</td></tr>
					<tr> 
					
					<td align="left">
					
							<h:commandButton id="run" value="Run" 
												action="#{babBean.executeCommand}"></h:commandButton>
					
					</td>
					<td></td>
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
					
						<h:outputText value="#{babBean.output}" escape="false"/>					
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