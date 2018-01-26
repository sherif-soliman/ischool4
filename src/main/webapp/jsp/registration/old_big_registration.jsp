<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>


<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="https://ajax4jsf.dev.java.net/ajax" prefix="a4j"%>

<link  href="css/main.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="scripts/main.js"></script>
    
 

<html>
<head>
<title>Registration ... iSchool</title>

</head>
<body>

	<f:view>


		<h:form id="resitration_form" >

			

			<div align="center" style="margin: 10px; border: 1px solid black;">


				<div id="new_student"
					style="color: #FFFFFF; background-color: #0033CC; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
					<span>Registration Details ...</span>

				</div>
				<br/>
				<table width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >

					<tr>
						<td align="left" width="15%">
						Name:
						</td>
						<td align="left" width="40%" ><h:inputText
								value="#{regBean.studentName}" style="width:96%;" /></td>
								
					<td align="left" width="15%">
						Gender:
						</td>
						<td align="left" width="30%">
							<h:selectOneMenu id="gender"
                                                     value="#{regBean.gender.selectedValue}"
                                                     style="width:96%;" >                                                     
                                      
                                      
                                      <f:selectItems value="#{regBean.gender.values}"/>
                                      
                        	</h:selectOneMenu>
						
						</td>
					</tr>
					
		<!-- 
					<tr>
						<td align="left" >
						Country:
						</td>
						<td align="left"  >
							<h:selectOneMenu id="country"
                                                     value="#{regBean.country.selectedValue}"
                                                     style="width:98%;" >                                                     
                                      <a4j:support  event="onchange" actionListener="#{regBean.onCountryChange}"  reRender="city" />
                                      
                                      <f:selectItems value="#{regBean.country.values}"/>
                                      
                        	</h:selectOneMenu>
								</td>
						<td align="left" >
						
						City:
						</td>
						<td align="left"  >
							<h:selectOneMenu id="city"
	                                                     value="#{regBean.city.selectedValue}"
	                                                     style="width:98%;" >                                                                                           
	                   			<a4j:support  event="onchange"   actionListener="#{regBean.onCityChange}" reRender="schools" />
	                                      <f:selectItems value="#{regBean.city.values}"/>
	                        </h:selectOneMenu>	                 
						</td>
					</tr>


-->
			
					<tr>
						<td align="left">
						School:
						</td>
						<td align="left" >						
						<h:selectOneMenu id="schools"
	                                                     value="#{regBean.school.selectedValue}"
	                                                     style="width:98%;" >                                                                                           
	                   			<a4j:support  event="onchange"   actionListener="#{regBean.onSchoolChange}" reRender="classYr" />
	                                      <f:selectItems value="#{regBean.school.values}"/>
	                        </h:selectOneMenu>	
						</td>
						<td align="left">
						Other:
						</td>
						<td align="left" ><h:inputText
								value="#{regBean.otherSchool}" style="width:94%;" /></td>
					</tr>

					<tr>
						<td align="left">
						Class Year:
						</td>
						<td align="left" >
								<h:selectOneMenu id="classYr"
                                                     value="#{regBean.classYear.selectedValue}"
                                                     style="width:98%;" >                                                     
                                           <a4j:support  event="onchange"   actionListener="#{regBean.onClassYearChange}" reRender="classNames" />
                                      <f:selectItems value="#{regBean.classYear.values}"/>                                      
                        		</h:selectOneMenu>
						</td>
						<td align="left">
					<!--  	Class Name:-->
						</td>
						<td align="left"  >
					<!--	
						<h:selectOneMenu id="classNames"
                                                     value="#{regBean.className.selectedValue}"
                                                     style="width:96%;" >                                                     
                                      <f:selectItems value="#{regBean.className.values}"/>                                      
                        		</h:selectOneMenu>
                        		-->
                        </td>
					</tr>
					<tr>
						<td align="left">
						Mobile:
						</td>
						<td align="left" colspan="3" ><h:inputText
								value="#{regBean.mobile}" style="width:30%;" /></td>
					</tr>
					<tr>
						<td align="left">
						User Name:
						</td>
						<td align="left" colspan="3" ><h:inputText
								value="#{regBean.userName}" style="width:30%;" /></td>
					</tr>
					<tr>
						<td align="left">
						Password:
						</td>
						<td align="left" ><h:inputText
								value="#{regBean.password}" style="width:64.5%;" >
								<a4j:support  event="onblur"   actionListener="#{regBean.onPasswordFill}"  />
								</h:inputText>
								</td>
						<td align="left">
						Confirm Password:
						</td>
						<td align="left"  >
						<h:inputText style="width:94%;" >
						
						</h:inputText>
						</td>
					</tr>								
				</table>


			</div>

		</h:form>
		
		
				<h:form enctype="multipart/form-data">



			<div align="center" style="margin: 10px; border: 1px solid black;">


				<div id="new_student"
					style="color: #FFFFFF; background-color: #0033CC; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
					<span>Upload Photo ...</span>

				</div>
				<br />

				<table id="fill_row" width="100%" border="0" cellpadding="2"
					cellspacing="3"
					style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;">

					<tr>
						<td align="left" colspan="4">Thank you for registration .. please upload your photo</td>
					</tr>
					<tr>
						<td align="left">Photo:</td>
						<td colspan="3" align="left"><h:inputFile
								value="#{regBean.part}"></h:inputFile></td>





					</tr>
					<tr>
						<td colspan="4"><h:panelGrid border="0" columns="1">
								<h:commandButton id="register" value="Register"
									action="#{regBean.registerStudent}"></h:commandButton>
							</h:panelGrid></td>

					</tr>
					
				</table>

			</div>

		</h:form>
		
	</f:view>
</body>
</html>