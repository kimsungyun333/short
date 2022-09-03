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
        getApi(); 
        
         var getCookie = function(name) {
        	        var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
        	        return value? value[2] : null;
        	};

        	$("#cookieRead1").text(getCookie("salesInfo"))
        	$("#cookieRead2").text(getCookie("salesUserInfo"))
           $("#cookieRead2").text(getCookie("salesProduct"))
    })
    
  function getApi() {
 
    	
    $.ajax({ type: "POST",
	    	 	  url: "/getSalesInfo.do",
	    	 	  dataType: "json" ,
	    	 	  success : function(data){
	    	 		
	    	 	  
	    	 	   //alert(data)
	    	 	   window.localStorage.setItem('salesInfo',JSON.stringify(data))
	    	 	   window.localStorage.setItem('salesUserInfo',JSON.stringify(data.salesUserInfo))
	    	 	   window.localStorage.setItem('salesProduct',JSON.stringify(data.salesProduct))
	    	 	   
	    	 	   window.sessionStorage.setItem('salesInfo',JSON.stringify(data))
	    	 	   window.sessionStorage.setItem('salesUserInfo',JSON.stringify(data.salesUserInfo))
	    	 	   window.sessionStorage.setItem('salesProduct',JSON.stringify(data.salesProduct))
	    	 	   
	    	 	   
	    	 	   
	    	 	
	    	 	  },error: function(){
                   alert("error");
	    	 	  }
                });
    }
  //  참고 : window.localStorage.getItem('name')<br>
  //  window.localStorage.getItem('region') <br>
   // window.localStorage.getItem('SalesUser') <br>
  
    
  </script>

</head>
<body>
자동으로 세션스토리지와 로컬스토리지에 값 저장 <br>
<br><br>


쿠키 읽기:
<div id='cookieRead1'>

</div>
<br>
<div id='cookieRead2'>

</div>
<br>

<div id='cookieRead3'>

</div>




</body>
</html>