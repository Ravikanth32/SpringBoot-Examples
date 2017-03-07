<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery.min.js"></script>
	 <script type="text/javascript" src="/js/jquery-ui.js"></script>
<script type="text/javascript">
$("document").ready(function(){
	var $iframe = $('#iframe');
	var content=$("#contentId").html();
	 $iframe.ready(function() {
	    $iframe.contents().find("body").append(content);
	});
	
	 $("#buttonId").click(function(){
		var content=$iframe.contents().find("html").html();
		$("#hiddenContentId").val(content)
		alert($("#hiddenContentId").val())
	}) 
	
	
})

</script>
</head>
<body>
<form action="/templates/saveTemplate" method="POST">
<table>
	<tr>
		<td>
			<label path="name">
				<spring:message text="Name"/>
			</label>
		</td>
		<td>
		<input name="id" type="hidden" value="${template.id}" />
			<input name="name" type="text" value="${template.name}" />
			<input name="content" type="hidden" id="hiddenContentId" />
		</td> 
	</tr>
	<tr>
		<td>
			<label for="content">
				<spring:message text="content"/>
			</label>
		</td>
		<td>
		<span style="display: none;" id="contentId">${template.content }</span>
			<%-- <input type="text" id="contentId" value="${template.content}" name="content"/> --%>
			<%-- <iframe src="/templates/getContent/${template.id}" style="border:2px solid grey;"></iframe> --%>
			<c:if test="${template.content}">
			
			</c:if>
			<c:choose>
				<c:when test="${!template.content.isEmpty()}">
				<iframe id="iframe" name="content">
				</iframe>
				</c:when>
				<c:otherwise>
				<textarea rows="20" cols="50" name="content">
				${template.content}
				</textarea>
				</c:otherwise>
			</c:choose>
		</td>
	</tr>
	<tr>
		<td colspan = "2">
                  <button id="buttonId">Submit</button>
        </td>
	</tr>
	
</table>	
</form>
</body>
</html>