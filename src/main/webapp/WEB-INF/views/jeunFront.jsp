<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://malsup.github.io/jquery.form.js"></script> 
    <script type="text/javascript">
    $(document).ready(function(){
         var getCookie = function(name) {
        	        var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
        	        return value? value[2] : null;
        	};

        	$("#cookieRead1").text(getCookie("salesInfo"))
        	

        	//로컬버튼
        	  $('#local').click(function(){
        	    	
        	    	$.ajax({ type: "POST",
        	  	 	  url: "/getSalesInfo.do",
        	  	 	  dataType: "json" ,
        	  	 	  success : function(data){ 
        	  	 	   //alert(JSON.stringify(data))	   
        	  	 	   window.localStorage.setItem('salesInfo',JSON.stringify(data))
        		 	   //window.localStorage.setItem('salesUserInfo',JSON.stringify(data.salesUserInfo))
        		 	   //window.localStorage.setItem('salesProduct',JSON.stringify(data.salesProduct))
        	  	 	alert("로컬스토리지 정상 저장");
        	  	 	  },error: function(){
        	             alert("error");
        	  	 	  }
        	          });
        	    	
        	    	
        	    });
        	   
        	//세션 버튼
        	    $('#session').click(function(){
        	
        	    	$.ajax({ type: "POST",
          	  	 	  url: "/getSalesInfo.do",
          	  	 	  dataType: "json" ,
          	  	 	  success : function(data){ 
          	  	 	   //alert(JSON.stringify(data))	   
          	  	 	   window.sessionStorage.setItem('salesInfo',JSON.stringify(data))
          		 	   //window.localStorage.setItem('salesUserInfo',JSON.stringify(data.salesUserInfo))
          		 	   //window.localStorage.setItem('salesProduct',JSON.stringify(data.salesProduct))
          		 	   alert("세션스토리지 정상 저장");
          	  	 	  },error: function(){
          	             alert("error");
          	  	 	  }
          	          })
        	    });
    });
    
 
    
   
  //  참고 : window.localStorage.getItem('name')<br>
  //  window.localStorage.getItem('region') <br>
   // window.localStorage.getItem('SalesUser') <br>
  
    
  </script>

</head>
<body>
<button type='button' id='local'>로컬 스토리지 저장</button><br>

<button type='button' id='session'>세션 스토리지 저장</button>
<br><br>


쿠키 읽기:
<div id='cookieRead1'>

</div>





</body>
</html>