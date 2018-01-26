<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
  
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
 
<%@ page extends="stream.ischool.parentJsp.ParentJsp"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="https://ajax4jsf.dev.java.net/ajax" prefix="a4j"%>
 
<meta content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, width=device-width" name="viewport"/>


<link  href="css/main.css" rel="stylesheet" type="text/css" media="all"/>
<link  href="../../css/main.css" rel="stylesheet" type="text/css" media="all"/>


<script type="text/javascript" src="scripts/main.js"></script>
<script type="text/javascript" src="../../scripts/main.js"></script>

<!-- 

no need now.. the above meta tag is enough 
<link  id="mobile_css_link"  href="none" rel="stylesheet" type="text/css" media="all"/>


<script type="text/javascript">

adjust_css_mobile();
function adjust_css_mobile()
{
	//return;
	var width = window.innerWidth ||
	document.documentElement.clientWidth ||
	document.body.clientWidth;
	
	
	
	var hi_res_css="css/mobile_main_hi_res.css";
	var low_res_css="css/mobile_main.css";
	
	var link = document.getElementById('mobile_css_link');
	

	if(width > 400 & ( window.location.pathname.indexOf('m_home')>0) ||
			parent.window.location.pathname.indexOf('m_home')>0)
			
	{// this is mobile with high resluion: any page other than login screen
		
		link.setAttribute('href', '../../'+hi_res_css);
	
	}else if ( width < 400 & ( window.location.pathname.indexOf('m_home')>0) ||
			parent.window.location.pathname.indexOf('m_home')>0)
	{	// this is low resolution mobile window:any page other than login screen
		link.setAttribute('href', '../../'+low_res_css);
	}else if(width > 400 & window.location.pathname.indexOf('m_login')>0)
	{// this is mobile with high resluion: only case for login screen
		link.setAttribute('href', hi_res_css);
	}else if(width < 400 & window.location.pathname.indexOf('m_login')>0)
	{// this is mobile with high resluion: only case for login screen
		
		link.setAttribute('href', low_res_css);
	}

}
</script> 

-->