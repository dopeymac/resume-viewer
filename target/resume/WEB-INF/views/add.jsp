<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
	<title>Add Resume</title>
	<style type="text/css">
	body {
		margin: 0;
		padding: 0;
	}
	
	body {
		font: 14px Arial, 'Helvetica Neue', Helvetica, sans-serif;
		color: #4d4d4d;
		width: 600px;
		margin: 0 auto;
		background: #CCCCFF;
	}
	
	#resumeapp {
		
		background: #FFFFFF;
		margin: 130px 0 40px 0;
		border: 1px solid #282828;
		position: relative;
		border-top-left-radius: 2px;
		border-top-right-radius: 2px;
		box-shadow: 0 2px 6px 0 rgba(0, 0, 0, 0.2),
					0 25px 50px 0 rgba(0, 0, 0, 0.15);
	}
	
	#resumeapp h1 {
		position: absolute;
		top: -120px;
		width: 100%;	
		font-size: 60px;
		font-weight: bold;
		text-align: center;
		text-shadow: -1px -1px rgba(0, 0, 0, 0.2);
		color: #404040;
		color: rgba(255, 255, 255, 0.3);
	}
	
</style>
<script type="text/javascript">
	
	function isValid()
	{
		
		var dateString = document.forms["addForm"]["startDate"].value;

		if(!/^\d{2}\/\d{2}\/\d{4}$/.test(dateString)){
	    	alert("Please make sure the start date is in the following format: MM/dd/yyyy");
	        return false;
	    }
	
	    var parts = dateString.split("/");
	    var day = parseInt(parts[1], 10);
	    var month = parseInt(parts[0], 10);
	    var year = parseInt(parts[2], 10);
	
	    if(year < 1000 || year > 3000 || month == 0 || month > 12){
	    	alert("Please make sure the start date is in the following format: MM/dd/yyyy");
	        return false;
	    }
	
	    var monthLength = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];
	
	    // Adjust for leap years
	    if(year % 400 == 0 || (year % 100 != 0 && year % 4 == 0))
	        monthLength[1] = 29;
	
	    // Check the range of the day
	    return day > 0 && day <= monthLength[month - 1];
	    if(!isValidated) {
	    	alert("Please make sure the start date is in the following format: MM/dd/yyyy");
	        return false;
	    } else {
			return true;
		}
	};
</script>
</head>
<body>
	<div id="resumeapp">
		<h1>
			Add Resume
		</h1>
		<form:form name="addForm" commandName="resume" style="padding:8px" onSubmit="return isValid()">
		    <p>
		        First Name<br/>
		        <form:input path="firstName"/>
		    </p>
		    <p>
		        Last Name<br/>
		        <form:input path="lastName"/>
		    </p>
		    <p>
		    	First Company Name<br/>
		    	<form:input path="firstCompany"/>
		    </p>
		    <p>
		    	Start Date (MM/dd/yyyy)<br/>
		    	<form:input path="startDate"/>
		    </p>
		    <p>
		    	Job Description:<br/>
		    	<form:input path="jobDescription"/>
		    </p>
		    <input type="submit" value="Save"/>
		</form:form>
	</div>
</body>
</html>
