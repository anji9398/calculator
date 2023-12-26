<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	div {
		padding-left: 30px;
		margin-right: 60%;
		margin-left: 5%;
		box-shadow: inset 0 -3em 3em rgba(0, 200, 0, 0.3), 0 0 0 2px white,
			0.3em 0.3em 1em rgba(200, 0, 0, 0.6);
	}
	body{
	   	font-size: 20px;
	}
	

</style>
<body>
<jsp:include page="index.html"/>
<br>
  <%
  int[] totMarks = { Integer.parseInt(request.getParameter("sub1")), Integer.parseInt(request.getParameter("sub2")),
  		Integer.parseInt(request.getParameter("sub3")), Integer.parseInt(request.getParameter("sub4")),
  		Integer.parseInt(request.getParameter("sub5")), Integer.parseInt(request.getParameter("sub6")),
  		Integer.parseInt(request.getParameter("sub7")), };

  int sum = 0;
  int fail = 100;
  for (int i = 0; i < totMarks.length; i++) {
  	sum += totMarks[i];
  	if (45 > totMarks[i])
  		fail = totMarks[i];
  }
  %>
 <div>
 <% 
  if(fail<45)
	  out.print("<b style='color:red'>Status &emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;: Fail</b><br>");
  else
	  out.print("<b>Status &emsp;&emsp;&emsp;&nbsp&nbsp&nbsp: Pass</b><br>");
  out.print("<b>Total Marks &emsp;&nbsp: "+sum+"</b><br>");
  float grade = sum/7;
  out.print("<b>Avg Percentage : "+grade+"%</b><br>");
 String str;
  if(grade<=100 && grade>90)
	    str="A";  
  else if(grade<=90 && grade>80)
	  str="B"; 
  else if(grade<=80 && grade>70)
	  str="C";
  else if(grade<=70 && grade>60)
	  str="D";
  else if(grade<=60 && grade>50)
	  str="E";
  else
	  str="G";
  out.print("<b>Grade is &emsp;&emsp;&emsp;: "+str+"</b>");
  %>
  </div>
</body>
</html>