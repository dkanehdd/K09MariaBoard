<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
    function idUse(){
    	var f = document.overlapFrm;
        var id = f.retype_id.value;
        var w = document.getElementById("warning");
        if(id==""){
        	w.innerHTML = "아이디를 입력하세요";
        	w.style.color = "red";
            return;
        }
        if(id.length<8||id.length>12){
        	w.innerHTML = "※ 8~12자 사이로 입력하세요";
        	w.style.color = "red";
            return;
        }
        if(id.charCodeAt(0)>=48&&id.charCodeAt(0)<=57){
        	w.innerHTML = "※ 첫글자는 숫자로 시작할수 없습니다";
        	w.style.color = "red";
            return;
        }
        for(var i=0 ; i<id.length ; i++){
            if((id.charCodeAt(i)>=48&&id.charCodeAt(i)<=57)||
            (id.charCodeAt(i)>=65&&id.charCodeAt(i)<=90)||
            (id.charCodeAt(i)>=97&&id.charCodeAt(i)<=122)){
            }
            else{
            	w.innerHTML = "※ 특수문자나 공백은 사용할 수 없습니다.";
            	w.style.color = "red";
                return;
            }
        }
    	opener.document.regiform.userid.value = 
            document.overlapFrm.retype_id.value;
        self.close();
    }
    </script>
</head>
<body>
    <h2>아이디 중복확인 하기</h2>

    <h3>입력한 아이디 : <%=request.getParameter("id") %></h3>

    <h3>중복된 아이디가 없습니다.</h3>
    <form name="overlapFrm">
        <input type="text" name="retype_id" size="20" value="<%=request.getParameter("id") %>">
        <input type="button" value="아이디사용하기" onclick="idUse();">
    </form>
    <h4 id="warning"></h4>
</body>

</html>