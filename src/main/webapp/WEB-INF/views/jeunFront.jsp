<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://malsup.github.io/jquery.form.js"></script> 
    <script type="text/javascript">
    $(document).ready(function(){
        getApi();
    })
    
  function getApi() {
 
    	
    $.ajax({ type: "POST",
	    	 	  url: "/project/postjeunFront",
	    	 	  dataType: "json" ,
	    	 	  success : function(data){
	    	 		
	    	 		//alert(data.name);
	    	 		//alert(data.region);
	    	 	   window.localStorage.setItem('name', data.name)
	    	 	   window.localStorage.setItem('region', data.region)
	    	 	   window.localStorage.setItem('SalesUser',JSON.stringify(data))
	    	 	   
	    	 	   sessionStorage.setItem('name', data.name)
	    	 	   sessionStorage.setItem('region', data.region)
	    	 	   sessionStorage.setItem('SalesUser',JSON.stringify(data))
	    	 	
	    	 	  },error: function(){
                   alert("error");
	    	 	  }
                });
    }
    
    
    
   // window.localStorage.setItem('name', '코드이음')
  //로컬 스토리지, 세션스토리지
  
  // keyName 이라는 이름의 key 에 objectData 이름의 객체 데이터를 세션에 저장
//sessionStorage.setItem(keyName, JSON.stringify(objectData));

// keyName 이름의 String 을 가져와 JSON 형태로 다시 Parse 진행
//JSON.parse(sessionStorage.getItem(keyName));

  </script>

</head>
<body>
자동으로 세션스토리지와 로컬스토리지에 값 저장 <br>
<br><br>
참고 : window.localStorage.getItem('name')<br>
     window.localStorage.getItem('region') <br>
     window.localStorage.getItem('SalesUser') <br>
<br><br>
세션스토리지도 비슷하게 활용


</body>
</html>