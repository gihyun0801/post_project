<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
   <main>
   
    <h1>회원가입</h1>
    
    <form action="/signup" method="post" class="signup-form" onsubmit="return check()">
    
       <p>아이디</p>
       <input type="text" name="inputId" required autocomplete="off" id="inputId">
       <span id="checkId"></span>
       
       <p>비밀번호</p>
       <input type="password" name="inputPw" required id="inputPw">
       
       <p>비밀번호 확인</p>
       <input type="password" name="inputPw2" required id="inputPw2">
       <span id="pwMessage"></span>
       
       <p>이름</p>
       <input type="inputName" name="inputName" id="inputName" required>
       <span id="nameMessage"></span>
       
       <br><br>
       
       <button>가입하기</button>
      
    </form>
   
   </main>
   
   <script src="/resources/js/signup.js"></script>
    
</body>
</html>