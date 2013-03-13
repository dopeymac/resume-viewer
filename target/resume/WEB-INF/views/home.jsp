<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Available Resumes</title>
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
		padding: 20px 20px 20px 20px;
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
		<h1>Available Resumes</h1>
	
		<c:forEach items="${resumes}" var="resume">
			<a href="view?id=${resume.id}">${resume.id} - ${resume.firstName} ${resume.lastName}</a>
			<br />
		</c:forEach>
	</div>
	<p >
		<a href="add"> Add Resume </a>
	</p>
</body>
</html>
