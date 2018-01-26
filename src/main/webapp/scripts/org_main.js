// JavaScript Document


function show(target) 
{ 
	document.getElementById(target).style.display='';	
}
function hide(target) 
{ 
	document.getElementById(target).style.display='none';	
}

function show_progress_bar(target) 
{ 
	if(target == 'this')
		{
			document.getElementById('busy_img').style.display='';
		}else
		{
			parent.document.getElementById('busy_img').style.display='';
		}	
}
function hide_progress_bar(target) 
{ 
//	if(target == 'this')
//	{
//		document.getElementById('busy_img').style.display='none';
//	}else
//	{
		parent.document.getElementById('busy_img').style.display='none';
//	}
}
function on_page_load() 
{ 
	hide_progress_bar();
	window.parent.scrollTo(0, 0);	
}


function add_equation()
{
//	alert('hii');
	
//	alert (document.getElementById('x'));
//	alert (document.getElementById('x').value);
	var x= document.getElementById('x').value;
	var y= document.getElementById('y').value;
	document.getElementById('x').value="";
	document.getElementById('y').value="";
	
	var equation="" +
			"<table border='0' cellpadding='0' cellspacing='0' style='display: inline-table; vertical-align:middle;'>" +
			"<tbody><tr><td style='border-bottom: 1px solid ;  text-align: center;'>" +
			x +
			"	</td></tr><tr><td style='text-align: center;'><span style='font-family:" +
			"times new roman,times,serif;'>" +
			y +
			"	</span></td></tr></tbody>" +
			"</table>" +
			"" +
			"";
		
	//var question_text_value=document.getElementById('ques_form:question_text').value;
	//var field=last_focused;
	//var field_value=field.value;
	//document.getElementById('ques_form:question_text').value=field_value+equation;
	last_focused.value=last_focused.value+equation;
//alert(last_focused.value);	
	document.getElementById('equation').style.display='none';
	//document.getElementById('ques_form:question_text').focus();
	last_focused.focus();
}

function add_symbol(symbol)
{

	//var question_text_value=document.getElementById('ques_form:question_text').value;
	//var field=last_focused;
	//var field_value=field.value;
	//document.getElementById('ques_form:question_text').value=field_value+symbol;
	last_focused.value=last_focused.value+symbol;
	document.getElementById('symbols').style.display='none';
	//document.getElementById('ques_form:question_text').focus();
	last_focused.focus();
}

function change_style(new_style)
{
//alert(new_style);
//alert('start');
	//var question_field=document.getElementById('ques_form:question_text');
	var question_field=last_focused;
//alert(question_field);
//alert(question_field.value);
	var question_field_value=question_field.value;
//alert(question_field_value);
	var selectedText="";
	//if(question_field.selectionStart)
    //{
//alert('start: '+ question_field.selectionStart);
//alert('end: '+ question_field.selectionEnd);
     selectedText = question_field_value.substring(
    		 question_field.selectionStart
          , question_field.selectionEnd);
//alert('selected: '+selectedText );
    //}
//alert(new_style);
	if(new_style=='bold')
	{	
		question_field.value=question_field_value.replace(selectedText, "&lt;strong&gt;"+selectedText+"&lt;/strong&gt;");
	}	
	else if(new_style=='superset')
	{	
		question_field.value=question_field_value.replace(selectedText, "&lt;sup&gt;"+selectedText+"&lt;/sup&gt;");
	}	
	else if(new_style=='subset')
	{	
		question_field.value=question_field_value.replace(selectedText, "&lt;sub&gt;"+selectedText+"&lt;/sub&gt;");
	}	
	//document.getElementById('symbols').style.display='none';
	question_field.focus();
}

function openTopLink(target)
{	
	document.getElementById('main_iframe').src =target; 
	show_progress_bar('this');
}

function resizeMobileIframe(obj) 
{
    //alert(obj.contentWindow.document.body.scrollHeight + 'px');
	var height= obj.contentWindow.document.body.scrollHeight;
	if(height < 420)
	{
		height = 1000;
	}		
	//obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
	obj.style.height = height + 'px';
	
}

function resizeIframe(obj) 
{
    //alert(obj.contentWindow.document.body.scrollHeight + 'px');
	var height= obj.contentWindow.document.body.scrollHeight;
	//alert(height);
	
	if(height < 1000)
	{// this condition is to keep relatively fixed height for all screens
		//alert("small");
		//height = 1000;
		height = 1400;
	}
		
	// I will add the following margin, coz in some case we hide more records
	// after the page load, like copy homework in the manage practice
	height = height +160;
	//height=height+100;
	//obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
	obj.style.height = height + 'px';
	
}
function check_adjust_arabic(obj)
{                
	var arabic = /[\u0600-\u06FF]/;
    var string = obj.value;
    //alert('str:'+string);
    if(string == null || string == "" )
	{
    	//alert('div');
    	string=obj.innerHTML;
	}
    if(arabic.test(string))
    {
                    obj.dir="rtl";
    }
    else
    {
                    obj.dir="ltr";
    }
}

function check_keyword(fld)
{
	var keyword=document.getElementById(fld).value;
	//alert(keyword);
	if(keyword.length<3)
	{
		alert("Please, enter a valid search keyword ...");
		return false;
	}	
} 
/*
function adjustHeight()
{
	// this to be called from the parent window
	// not used now #############################
	
var iFrame =  document.getElementById('main_iframe');
var iFrameBody;
if ( iFrame.contentDocument ) 
{ // FF
  iFrameBody = iFrame.contentDocument.getElementsByTagName('body')[0];
}
else if ( iFrame.contentWindow ) 
{ // IE
  iFrameBody = iFrame.contentWindow.document.getElementsByTagName('body')[0];
}

//alert('hi1');
//var body = document.getElementById('main_iframe').body,
//html = document.documentElement;

//var body=iFrameBody;
var html=iFrame.contentDocument.documentElement;

//alert('hi2');

//alert(iFrameBody);
//alert(html );

//var height = Math.max( iFrameBody.scrollHeight, iFrameBody.offsetHeight, 
 //                  html.clientHeight, html.scrollHeight, html.offsetHeight );

height=html.offsetHeight+60 ;

	//alert(height);
	
	document.getElementById('main_iframe').style.height=height+'px';
	//alert('bye');
	
}			


function _adjustParentHeight()
{
	//to be called from the ifram
var body = document.body,
html = document.documentElement;

var height = Math.max( body.scrollHeight, body.offsetHeight, 
                   html.clientHeight, html.scrollHeight, html.offsetHeight );
	//alert('hi');
//height=html.offsetHeight+50 ; //ok with firefox
//height=html.scrollHeight+50 ; ok with ie

height = Math.min(html.scrollHeight,html.offsetHeight);
height = height +50;

alert(height);
	
	window.parent.document.getElementById('main_iframe').style.height=height+'px';
	//alert('bye');
	
}	
*/