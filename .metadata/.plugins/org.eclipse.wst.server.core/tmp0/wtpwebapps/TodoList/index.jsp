<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/main.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
  
  
  <c:choose>
  <c:when test="${empty sessionScope.loginMember}">
    <%-- 로그인되지 않은 경우 --%>
    <form action="login" method="post">
      아이디: <input type="text" name="inputId"><br>
      비밀번호: <input type="password" name="inputPw"><br>
      <button>제출하기</button>
    </form>
    
    <a href="/signup">회원가입</a>
    
  </c:when>
  
  <c:otherwise>
    <%-- 로그인된 경우 --%>
    
    
    <c:choose>
     
      <c:when test="${empty postList }">
      
       <h2>작성한 게시글이 없습니다</h2>
      
      </c:when>
      
      <c:otherwise>
       
       <c:forEach var="st" items="${postList }" varStatus="str">
           
           ${st.postNo } <br>
           ${st.postTitle } <br>
           ${st.postContent } <br>
           ${st.postDate } <br>
           
       <a href="/updateList?postNo=${st.postNo }">수정하기</a>
       <a href="/deleteList?postNo=${st.postNo }">삭제하기</a>
       </c:forEach>
       
       
       
      
      </c:otherwise>
       
       
    
    </c:choose>
    <a href="/insert">추가하기</a>
    <a href="logout">로그아웃</a>
    
    
    
    
    
    
    
    
  </c:otherwise>
</c:choose>
   
   
   
   <c:if test="${not empty sessionScope.message }">
   
      <script>
       
      alert("${message}")
        
      </script>
      
      <c:remove var="message" scope="session"/>
   
   </c:if>
   
</body>
</html>