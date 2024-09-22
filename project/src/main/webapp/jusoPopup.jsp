<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<% 
	request.setCharacterEncoding("UTF-8");
	String inputYn = request.getParameter("inputYn"); 
	String roadFullAddr = request.getParameter("roadFullAddr"); 
	String roadAddrPart1 = request.getParameter("roadAddrPart1"); 
	String zipNo = request.getParameter("zipNo"); 
	String addrDetail = request.getParameter("addrDetail"); 
	String roadAddrPart2 = request.getParameter("roadAddrPart2");
%>
</head>
<script language="javascript">
function init() {
    var url = location.href;
    var confmKey = "U01TX0FVVEgyMDI0MDkxNzIzNTIyMDExNTA4OTg=";
    var resultType = "4";
    var inputYn = "<%= inputYn %>";
    if (inputYn != "Y") {
        document.getElementById('form').confmKey.value = confmKey;
        document.getElementById('form').returnUrl.value = url;
        document.getElementById('form').resultType.value = resultType;
        document.getElementById('form').action = "https://business.juso.go.kr/addrlink/addrLinkUrl.do";
        document.getElementById('form').submit();
    } else {
        if (window.opener && !window.opener.closed) {
            opener.jusoCallBack(
                "<%= roadFullAddr %>", 
                "<%= roadAddrPart1 %>", 
                "<%= addrDetail %>", 
                "<%= zipNo %>", 
                "<%= roadAddrPart2 %>"
            );
            window.close();  
        }
    }
}
</script>
<body onload="init();">
	<form id="form" name="form" method="post">
		<input type="hidden" id="confmKey" name="confmKey" value=""/>
		<input type="hidden" id="returnUrl" name="returnUrl" value=""/>
		<input type="hidden" id="resultType" name="resultType" value=""/>
	</form>
</body>
<!-- https://business.juso.go.kr/addrlink/openApi/popupApi.do -->
</html>