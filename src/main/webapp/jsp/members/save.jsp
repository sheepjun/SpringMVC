<%@ page import="hello.servelet.domain.member.Member" %>
<%@ page import="hello.servelet.domain.member.MemberRepository" %>
<%@ page import="hello.servelet.domain.member.Member" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%

    MemberRepository memberRepository = MemberRepository.getInstance();
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username, age);
    memberRepository.save(member);

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
성공
<ul>
    <li>id=<%=member.getId()%></li>
    <li>id=<%=member.getUsername()%></li>
    <li>id=<%=member.getAge()%></li>
</ul>
<a href="/index.html">메인</a>
</body>
</html>
