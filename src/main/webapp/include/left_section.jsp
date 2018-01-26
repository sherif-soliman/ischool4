			<div align="center" style="color: #FFFFFF; background-color:#eeeeee; ">
			
					<div class="left_menu_section">
					<span>Welcome  <h:outputText value="#{loginBean.userProfile.name}"/> ...</span>
						
					</div>
					<div  width="100%">
					<h:panelGrid border="0" columns="2"   width="100%">
									
						<h:graphicImage url="../../images/dynamic/users/profile/#{loginBean.userProfile.schoolId}/#{loginBean.userName}" width="40">
							
						</h:graphicImage>
					
					<p class="left_menu_section_title">
					&nbsp;&nbsp;wish you all the best 
					</p>
					
					</h:panelGrid>
					
						<a href="#" style="color: green; font-size:12px " onclick="openTopLink('../registration/profile_manager.jsp');">					
						Update Profile
					</a>
					<br/><br/>
					</div>
					
		<a href="#" style="color: #FFFFFF; text-decoration: none" 
		onclick="openTopLink('../performance/performance.jsp');">					
				<div class="left_menu_section"
					>
					<span>Performance</span>
						
					</div>
					<p class="left_menu_section_title ">
					check your performance, strength and weakness points ... 
					</p>
					
				<img src="../../images/static/common/performance.jpg" width="200" border="0"/>
		
	</a>
		<br/><br/>
				<div class="left_menu_section"	>
					<span>Suggested Exercises</span>
						
					</div>
<br/>

						<h:dataTable id="exercises_list"
								width="100%" frame="below" cellpadding="5" cellspacing="0"
								var="trows" value="#{exerciseList.suggestedExercisesDM}"
								rows="3"
								rowClasses="plain_row" 
								border="0" 
								>

								 
								<h:column>
								
								<h:outputLink value="#" styleClass="menu_item" onclick="document.getElementById('main_iframe').src ='../question/question.jsp?newRequest=EXERCISE&practiceId=#{trows.substring(0,trows.indexOf(':'))}';  show_progress_bar('this');">
										<h:outputText value="#{trows.substring(trows.indexOf(' -')+2)}"></h:outputText>
								</h:outputLink>
								</h:column>
								 
								
								
							</h:dataTable>
							
							<br/><br/>

				<img src="../../images/static/common/exercise.jpeg" width="200" border="0"/>
		
		<br/><br/>
			<div class="left_menu_section"	>
					<span>Do you know ..</span>
						
					</div>
		
		<br/>
	<h:form>	
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
  							</h:form>
				
		<br/>			
			</div>
  		
  		
  		