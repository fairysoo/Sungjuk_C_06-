<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="sungjuk.교수, sungjuk.성적" %>
<%-- 입력 페이지에서 생성된 Bean을 공유받음 --%>
<jsp:useBean id="담당교수" class="sungjuk.교수" scope="session" />
<jsp:useBean id="과목성적" class="sungjuk.성적" scope="session" />

<!DOCTYPE html>
<html>
<head><title>성적 조회 바운더리</title></head>
<body>
    <h2>[Boundary] 성적조회_UI</h2>
    <hr>
    <%
        // 1. 조회 요청자 정보 (임의 설정)
        String 요청교수id = "inha";

        out.print("<p>조회 요청 교수ID: " + 요청교수id + "</p>");

        // 2. 컨트롤 로직 실행 (UI 클래스의 '학점조회' 로직 구현)
        if (담당교수.교수체크(요청교수id)) {
            // Entity로부터 데이터 가져오기
            String 결과 = 과목성적.학점조회();
            out.print("<h3>[조회 성공]</h3>");
            out.print("<p style='font-family: monospace;'>" + 결과 + "</p>");
        } else {
            out.print("<h3>[오류] 조회 권한이 없습니다.</h3>");
        }
    %>
    <br>
    <a href="입력_화면.jsp">다시 입력하기</a>
</body>
</html>