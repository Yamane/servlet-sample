<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>
<body>
	<h3>メッセージを入力</h3>
	<form action="${pageContext.request.contextPath}/sample" method="post">
		<input type="text" name="message" />
		<button type="submit">送信</button>
		<c:if test="${!empty error}">
		  <p style="color:red;">${fn:escapeXml(error)}</p>
		</c:if>
	</form>
</body>
</html>