<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
	<title>View Resume</title>
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
		padding: 20px 20px 20px 20px;
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
</head>
<body>

<div id="resumeapp">
	<h1>
		Resume Details 
	</h1>

	<p>
		<label>First Name: ${resume.firstName}</label>
	</p>
	<p>
		<label>Last Name: ${resume.lastName}</label>
	</p>
	<p>
		<label>First Company Name: ${resume.firstCompany}</label>
	</p>
	<p>
		<label>Start Date: ${resume.formattedStartDate}</label>
	</p>
	<p>
		<label>Job Description: ${resume.jobDescription}</label>
	</p>
	
</div>

</body>
</html>
