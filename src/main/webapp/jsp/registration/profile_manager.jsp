<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Profile Management ... iSchool</title>

</head>
<body onload="on_page_load();">

	<f:view>

		
	<h:form id="practice_form"  onsubmit="show_progress_bar();">
<table border="0" width="100%">
			<!--  tr id="top_row">
			<td colspan="3" >
				<%@ include file="../../include/top_section.jsp"%>
			</td>
			</tr-->
			<tr id="main_row">
					<!-- td id="left_area" style="vertical-align: top;"></td-->
					<td id="middle_area" style="vertical-align: top;" width="75%">


						<div align="center" style="border: 0px solid black;">


						<div class="middle_menu_section" >
								<span>Profile</span>

							</div>
							<br/>

							<div style="border: 1px solid black;">
				<table width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >
					<tr>
					
						<td colspan="4">
						<br/>
						</td>
					</tr>
					<tr>
						<td align="left">
					
						Old Password:
						</td>
						<td align="left" ><h:inputText
								value="#{regBean.password}" style="width:64.5%;" >								
								</h:inputText>
								</td>
						<td align="left">
						New Password:
						</td>
						<td align="left"  >
						
						<h:inputText
								value="#{regBean.newPassword}" style="width:94%;" >								
								</h:inputText>
						
						</td>
					</tr>				
					
						<tr>
						
						<td colspan="4" align="left"><h:messages id="messages"
								errorClass="error_msg" infoClass="info_msg"
								warnClass="warning_msg" /></td>
		</tr>
		
					<tr>
						<td colspan="4"><h:panelGrid border="0" columns="1">
					<br/>
								<h:commandButton id="register" value="Change Password"
									action="#{regBean.changePassword}"></h:commandButton>
							</h:panelGrid></td>

					</tr>
									
				</table>


						</div>
	
	

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

</h:form>

	</f:view>
	
</body>
</html>