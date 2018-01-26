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
<script type="text/javascript">


function validate_form()
{
	if(! validate_password() | ! validate_name() | ! validate_mobile())
	{
		return false;
	}else
	{
		return true;
	}	
	
}
function validate_password()
{
	var password=document.getElementById("resitration_form:password").value;
	var password2=document.getElementById("resitration_form:password2").value;
	//alert(password);
	if(password == password2 & password != '' )
	{
		document.getElementById("password_error_msg").style.display='none';
		return true;
	}else
	{
		//alert("Password is not matching ");
		document.getElementById("password_error_msg").style.color='red';
		document.getElementById("password_error_msg").style.display='';
		return false;
	}
	
}

function validate_name()
{
	var name=document.getElementById("resitration_form:name").value;

	if(name == '' || name == ' ' )
	{
		//alert('ff');
		document.getElementById("name_error_msg").style.color='red';
		document.getElementById("name_error_msg").style.display='';
		return false;
	}else
	{
		document.getElementById("name_error_msg").style.display='none';
		return true;
	}
}

function validate_mobile()
{
	var mobile=document.getElementById("resitration_form:mobile").value;

	if(mobile == '' || mobile == ' ' )
	{
		//alert('ff');
		document.getElementById("mobile_error_msg").style.color='red';
		document.getElementById("mobile_error_msg").style.display='';
		return false;
	}else
	{
		document.getElementById("mobile_error_msg").style.display='none';
		return true;
	}
}
</script>

</head>
<body>

	<f:view>


		<h:form id="resitration_form"  enctype="multipart/form-data">

			

			<div align="center" style="margin: 10px; border: 1px solid black;">

				<div class="middle_menu_section" >
					<span>Registration Details ...</span>

				</div>
				<br/>
				<table width="100%" border="0" cellpadding="2" cellspacing="3" style="color: #223366; font-family: Verdana, Arial, Sans-Serif; font-size: 12px;" >

					<tr>
						<td align="left" >
						Name:
						</td>
						<td align="left" ><h:inputText style="width:94%;" id="name"
								value="#{regBean.studentName}"  onblur="validate_name();"/></td>
								
					<td align="left" >
						Mobile:
						</td>
						<td align="left" >
							<h:inputText id="mobile"
								value="#{regBean.mobile}"  onblur="validate_mobile();"/>
						
						</td>
					</tr>
					
	
			
				<tr>
						<td align="left">
						Password:
						</td>
						<td align="left" ><h:inputSecret id="password"
								value="#{regBean.password}"  >
								
								</h:inputSecret>
								</td>
						<td align="left">
						Confirm Password:
						</td>
						<td align="left"  >
						<h:inputSecret id="password2" onblur="validate_password();">
						
						</h:inputSecret>
						</td>
					</tr>
					
					<tr>
						<td colspan="4"></td>

					</tr>
					<tr>
						<td colspan="4" align="left">
						<label id="password_error_msg" style="display:none;"> Password is not matching ...</label>
						</td>
					</tr>
					<tr>
						<td colspan="4" align="left">
						<label id="mobile_error_msg" style="display:none;"> Wrong mobile number...</label>
						</td>
					</tr>
					<tr>	
						<td colspan="4" align="left">
						<label id="name_error_msg" style="display:none;"> Wrong value for name ...</label>
						</td>

					</tr>								
<tr>
						<td colspan="4"></td>

					</tr>


				</table>


			</div>




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
						<td align="left" colspan="4">Please upload your photo</td>
					</tr>
					<tr>
						<td align="left">Photo:</td>
						<td colspan="3" align="left"><h:inputFile
								value="#{regBean.part}"></h:inputFile></td>





					</tr>
					<tr>
						<td colspan="4"><h:panelGrid border="0" columns="1">
								<h:commandButton id="register" value="Register"
									action="#{regBean.simpleRegisterStudent}" onclick="return validate_form();"></h:commandButton>
							</h:panelGrid></td>

					</tr>
					
				</table>

			</div>

		</h:form>
		
		
	</f:view>
</body>
</html>