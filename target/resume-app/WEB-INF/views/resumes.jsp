<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Available Resumes</title>
</head>
<body>
<h1>Available Resumes</h1>
<c:forEach items="${resumes}" var="resume">
	<a href="view?id=${resume.id}">${resume.id} -
	${resume.firstName} ${resume.lastName}</a>
	<br />
</c:forEach>

</body>
</html>
