<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>수정하기</title>
</head>
<body>

 
     <form action="/updateList" method="post">
     
            
            <input type="text" name="postTitle" value="${requestScope.postTitle }">
            <textarea style="resize:none;font-size:18px;"name="postContent">${requestScope.postContent }</textarea>
            
      
            <input type="hidden" value="${postList.postNo }" name="hiddenPost">
            
            <button>수정하기</button>
     
      </form>



</body>
</html>