
<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Friends ... iSchool</title>


</head>
<body onload="on_page_load();"> 

	<f:view>

		<h:form id="friends">

			<table border="0" width="100%">
			<!-- tr id="top_row">
					<td colspan="3">
					< %@ include
							file="../../include/top_section.jsp"%></td>
				</tr-->
			<tr id="main_row">
			
			
			 
			<td id="middle_area" style="vertical-align: top;" width="55%">
			
						<div align="center" style="border: 0px solid black;">


						<div class="middle_menu_section" >
								<span>Search For Friends ...</span>

							</div>
							<br/>
					<h:panelGrid columns="3">
					<h:inputText id="search_keyword" value="#{friendsBean.friendsSearchKey}" />
						&nbsp;
							<h:commandButton id="searchForFriendButt" value="Search"
												action="#{friendsBean.searchForFriends}"
												onclick="return check_keyword('friends:search_keyword');"
												></h:commandButton>
					</h:panelGrid>
					<br/>
						<h:dataTable id="foundFriends"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{friendsBean.searchedFriends}"
								rows="#{friendsBean.searchedFriends.rowCount}"
								rowClasses="odd_row,even_row">

								<h:column>
												
								<h:graphicImage url="../../images/dynamic/users/profile/#{trows.schoolId}/#{trows.userName}" width="60"/>		

								</h:column>
								<h:column>

									<h:outputText value="#{trows.name}" />

								</h:column>
								<h:column>
								
								
								<h:commandButton id="selectImage" value="Send Invitation"
												action="#{friendsBean.requestFriendship}"
												
												>
								
								<f:param name="selectedUserId" value="#{trows.userName}" ></f:param>				
								</h:commandButton>
								
								</h:column>	
							</h:dataTable>
							 
							
						</div>
			
			
			
			
									<div align="center" style=" border: 1px solid black;">


							<div class="middle_menu_section" >
								<span>Pending Requests (Waiting Your Acceptance)</span>

							</div>
							<br/>
					
					<br/>
						<h:dataTable id="waitingFriends"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{friendsBean.waitingFriends}"
								rows="#{friendsBean.waitingFriends.rowCount}"
								rowClasses="odd_row,even_row">

								<h:column>
												
								<h:graphicImage url="../../images/dynamic/users/profile/#{trows.schoolId}/#{trows.userName}" width="60"/>		

								</h:column>
								<h:column>

									<h:outputText value="#{trows.name}" />

								</h:column>
								<h:column>
								
								
								<h:commandButton id="accept" value="Accept"
												action="#{friendsBean.acceptFriendship}"
												
												>
								
								<f:param name="waitingUserId" value="#{trows.userName}" ></f:param>				
								</h:commandButton>
								
								</h:column>	
							</h:dataTable>
							 
							
						</div>
			
			
			
			
			
			
			<br/>
				<div align="center" style=" border: 1px solid black;">


						<div class="middle_menu_section" >
								<span>Pending Requests (Waiting Friends to Accept)</span>

							</div>
							<br/>
					
					<br/>
						<h:dataTable id="pendingFriends"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{friendsBean.pendingFriends}"
								rows="#{friendsBean.pendingFriends.rowCount}"
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


<br/>
					<div class="middle_menu_section" >
								<span>Active Friends</span>

							</div>
							<br/>
					
					<br/>
						<h:dataTable id="activeFriends"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{friendsBean.activeFriends}"
								rows="#{friendsBean.activeFriends.rowCount}"
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
