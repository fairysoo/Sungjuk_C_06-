<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="sungjuk.교수, sungjuk.성적" %>
<%-- Bean 생성: scope를 session으로 설정하여 조회 페이지와 공유 --%>
<jsp:useBean id="담당교수" class="sungjuk.교수" scope="session" />
<jsp:useBean id="과목성적" class="sungjuk.성적" scope="session" />

<!DOCTYPE html>
<html>
<head><title>성적 입력 바운더리</title></head>
<body>
    <h2>[Boundary] 성적입력_UI</h2>
    <hr>
    <%
        // 1. 임의의 입력 데이터 (사용자가 폼에 입력했다고 가정)
        String 입력교수id = "inha";
        String 학생id = "20260001";
        int 자바 = 90;
        int DB = 85;
        int 보안 = 95;

        out.print("<p>입력 요청 데이터: 교수ID(" + 입력교수id + "), 학생ID(" + 학생id + ")</p>");

        // 2. 컨트롤 로직 실행 (UI 클래스의 '입력버튼클릭' 로직 구현)
        if (담당교수.교수체크(입력교수id)) {
            // Entity에 데이터 저장 요청
            과목성적.성적입력(학생id, 자바, DB, 보안);
            out.print("<h3>[성공] 성적 입력이 완료되었습니다.</h3>");
        } else {
            out.print("<h3>[오류] 교수 인증에 실패하였습니다.</h3>");
        }
    %>
    <br>
    <a href="성적조회_UI.jsp">성적 조회 화면으로 이동</a>
</body>
</html>