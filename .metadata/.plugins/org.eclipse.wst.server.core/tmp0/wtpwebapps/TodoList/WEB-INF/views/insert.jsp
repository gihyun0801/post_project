<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추가하기</title>
</head>
<body> 
            <form action="/insert" method="post">
             
              제목 : <input type="text" name="inputTitle"> <br>
              내용 : <textarea name="inputContent" style="resize:none;font-size:18px"></textarea>
            
            <button>추가하기</button>
            
            ${sessionScope.loginMember }
            </form>
                
                 
</body>
</html>