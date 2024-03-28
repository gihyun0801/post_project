<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="/resources/css/main.css">

<meta charset="UTF-8">
<title>추가하기</title>
</head>
<body style="   background: linear-gradient(184deg, #242535 30%, #776bf6 138%);"> 
            <form action="/insert" method="post" class="insert_form">
             
              제목 : <input type="text" name="inputTitle" placeholder="제목을 입력하세요"> <br>
              내용 : <textarea name="inputContent" style="resize:none;font-size:18px" placeholder="내용을 입력하세요"></textarea>
            
            <button>추가하기</button>
            
            </form>
                
                 
</body>
</html>