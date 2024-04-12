<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>
<body>
<h3>入力されたメッセージ：${fn:escapeXml(message)}</h3>
<a href="${pageContext.request.contextPath}/">戻る</a>
</body>
</html>