
<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Role Management ... iSchool</title>


</head>
<body onload="on_page_load();"> 

	<f:view>

		<h:form >

			<table border="0" width="100%">
			<!--
				<tr id="top_row">
					<td colspan="3">
					< %@ include
							file="../../include/top_section.jsp"%></td>
				</tr>
				-->
			<tr id="main_row">
			
			
			
			<td id="middle_area" style="vertical-align: top;" width="55%">
			
						<div align="center" style="border: 1px solid black;">


							<div 
								style="color: #FFFFFF; background-color: #0033CC; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Search For Accounts ...</span>

							</div>
							<br/>
					<h:panelGrid columns="3">
					<h:inputText value="#{adminBean.usersSearchKey}" />
						&nbsp;
							<h:commandButton id="searchForFriendButt" value="Search"
												action="#{adminBean.searchForFriends}"></h:commandButton>
					</h:panelGrid>
					<br/>
						<h:dataTable id="foundFriends"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{adminBean.searchedUsers}"
								rows="#{adminBean.searchedUsers.rowCount}"
								rowClasses="odd_row,even_row">

								<h:column>
												
								<h:graphicImage url="../../images/dynamic/users/profile/#{trows.schoolId}/#{trows.userName}" width="60"/>		

								</h:column>
								<h:column>

									<h:outputText value="#{trows.name}" />

								</h:column>
								<h:column>
								
								
								<h:commandButton id="teacherSelectImage" value="Add To Students"
												action="#{adminBean.requestFriendship}"
												
												>
								
								<f:param name="selectedUserId" value="#{trows.userName}" ></f:param>				
								</h:commandButton>
								
								</h:column>	
								<h:column>
								
								
								<h:commandButton id="selectImage" value="Add to Teachers"
												action="#{adminBean.requestFriendship}"
												
												>
								
								<f:param name="selectedUserId" value="#{trows.userName}" ></f:param>				
								</h:commandButton>
								
								</h:column>	
							</h:dataTable>
							 
							
						</div>
			
			
			
			
									<div align="center" style=" border: 1px solid black;">


							<div 
								style="color: #FFFFFF; background-color: #0033CC; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Pending Requests (Waiting Your Acceptance)</span>

							</div>
							<br/>
					
					<br/>
						<h:dataTable id="waitingFriends"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{adminBean.waitingFriends}"
								rows="#{adminBean.waitingFriends.rowCount}"
								rowClasses="odd_row,even_row">

								<h:column>
												
								<h:graphicImage url="../../images/dynamic/users/profile/#{trows.schoolId}/#{trows.userName}" width="60"/>		

								</h:column>
								<h:column>

									<h:outputText value="#{trows.name}" />

								</h:column>
								<h:column>
								
								
								<h:commandButton id="accept" value="Accept"
												action="#{adminBean.acceptFriendship}"
												
												>
								
								<f:param name="waitingUserId" value="#{trows.userName}" ></f:param>				
								</h:commandButton>
								
								</h:column>	
							</h:dataTable>
							 
							
						</div>
			
			
			
			
			
			
			
				<div align="center" style=" border: 1px solid black;">


							<div 
								style="color: #FFFFFF; background-color: #0033CC; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Pending Requests (Waiting Friend's to Accept)</span>

							</div>
							<br/>
					
					<br/>
						<h:dataTable id="pendingFriends"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{adminBean.pendingFriends}"
								rows="#{adminBean.pendingFriends.rowCount}"
								rowClasses="odd_row,even_row">

								<h:column>
												
								<h:graphicImage url="../../images/dynamic/users/profile/#{trows.schoolId}/#{trows.userName}" width="60"/>		

								</h:column>
								<h:column>

									<h:outputText value="#{trows.name}" />

								</h:column>
								
							</h:dataTable>
							 
							
						</div>
			
			
			
			<div align="center" style=" border: 1px solid black;">


							<div 
								style="color: #FFFFFF; background-color: #0033CC; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Active Friends</span>

							</div>
							<br/>
					
					<br/>
						<h:dataTable id="activeFriends"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{adminBean.activeFriends}"
								rows="#{adminBean.activeFriends.rowCount}"
								rowClasses="odd_row,even_row">

								<h:column>
												
								<h:graphicImage url="../../images/dynamic/users/profile/#{trows.schoolId}/#{trows.userName}" width="60"/>		

								</h:column>
								<h:column>

									<h:outputText value="#{trows.name}" />

								</h:column>
								
							</h:dataTable>
							 
							
						</div>
			
			
				</td>
		<!-- td id="right_area" style="vertical-align: top;">
				
			</td -->
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
