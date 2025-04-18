<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<img src="images/qna/think.jpg">
	</div>
	
	 <div class="index"> 

        <!-- Category News End-->

        <!-- Category News Start-->
        <div class="cat-news">
            <div class="container">
                 <h2>문의하기</h2>
				<form name="reply_form">
				<table class="qnaList" border="1" width="1000" style="margin:auto">
					<tr>
						<th>분류</th>
						<td>${qnaVO.kind}</td>
					</tr>
					<tr>
						<th>제목</th>
						<td>${qnaVO.subject}</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea cols="130" rows="10" style="resize:none;" readOnly="readOnly">${qnaVO.content}</textarea>
						</td>
					</tr>
					<tr>
						<th>첨부 <br> 이미지</th>
						<td align="center">
							<c:choose>
								<c:when test="${qnaVO.picture == 'default.jpg'}">
									[이미지 없음]
								</c:when>
								<c:otherwise>
									<img src="images/qna_images/${qnaVO.picture}">
								</c:otherwise>
							</c:choose>							
						</td>
					</tr>
				</table>	
				
				<br> <br> <br>
				<c:choose>
					<c:when test="${qnaVO.rep==1}">
						<table class="list" border="1" width="1000" style="margin:auto">
							<tr>
								<th colspan="2">
									답변 작성
								</th>
							</tr>
							<tr>
								<td>
									<textarea name="reply" cols="130" rows="10" style="resize:none;"></textarea>
								</td>
							</tr>
						</table>
						
						<input type="hidden" name="qseq" value=${qnaVO.qseq}>
						<div class="qWrite_btn">	
							<input type="button" value="확인" onclick="answerQna()">
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							<input type="button" value="취소" onclick="history.go(-1)">
						</div>
					</c:when>
					<c:otherwise>
						<table class="list" border="1" width="1000" style="margin:auto">
							<tr>
								<th colspan="2">
									문의하신 내용에 대한 답변입니다.
								</th>
							</tr>
							<tr>
								<td>
									${qnaVO.reply}
								</td>
							</tr>
						</table>
					</c:otherwise>
				</c:choose>
				
				<br><br> 
				</form>
            </div>
        </div>
        <!-- Category News End-->

        
        

	</div>	
	
</body>
</html>
<%@ include file="../footer.jsp" %>