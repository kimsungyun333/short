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
    
    
    
   // window.localStorage.setItem('name', '�ڵ�����')
  //���� ���丮��, ���ǽ��丮��
  
  // keyName �̶�� �̸��� key �� objectData �̸��� ��ü �����͸� ���ǿ� ����
//sessionStorage.setItem(keyName, JSON.stringify(objectData));

// keyName �̸��� String �� ������ JSON ���·� �ٽ� Parse ����
//JSON.parse(sessionStorage.getItem(keyName));

  </script>

</head>
<body>
�ڵ����� ���ǽ��丮���� ���ý��丮���� �� ���� <br>
<br><br>
���� : window.localStorage.getItem('name')<br>
     window.localStorage.getItem('region') <br>
     window.localStorage.getItem('SalesUser') <br>
<br><br>
���ǽ��丮���� ����ϰ� Ȱ��


</body>
</html>