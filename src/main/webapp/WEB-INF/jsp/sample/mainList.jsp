<!--Test Main 화면-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
</head>
<body>
<h2>사용자 목록</h2>
<table style="border:1px solid #ccc">
    <colgroup>
        <col width="25%"/>
        <col width="25%"/>
        <col width="25%"/>
        <col width="25%"/>
    </colgroup>
    <thead>
        <tr>
        	<th scope="col">등록번호</th>
            <th scope="col">이름</th>
            <th scope="col">이메일</th>
            <th scope="col">메세지</th>            
        </tr>
    </thead>
    <tbody>
        <c:choose>
            <c:when test="${fn:length(list) > 0}">
                <c:forEach items="${list }" var="row">
                    <tr>                        
                        <td class="title">
                                <a href="#this" name="title">${row.pid }</a>
                                <input type="hidden" id="PID" value="${row.pid }">
                        </td>
                        <td>${row.name }</td>
                        <td>${row.email }</td>
                        <td>${row.message }</td>                        
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="4">조회된 결과가 없습니다.</td>
                </tr>
            </c:otherwise>
        </c:choose>
         
    </tbody>
</table>


</body>
</html>