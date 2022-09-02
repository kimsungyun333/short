<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
</head>
<body>
<h2>비동기통신으로 데이터 받기</h2>
<button id="sendBtn" type="button">SEND</button>
<h2>Data From Server :</h2>
<div id="data"></div>
<script>
    $(document).ready(function(){
        let salesUserInfo = {name:"SeungHoon", region:"GangSeoGu"};
        let salesUserInfo2 = {};
        $("#sendBtn").click(function(){
            $.ajax({
                type:'POST',
                url: '/salesajax',
                headers : { "content-type": "application/json"},
                dataType : 'text',
                data : JSON.stringify(salesUserInfo),
                success : function(result){
                    salesUserInfo2 = JSON.parse(result);
                    alert("received="+result);
                    $("#data").html("name="+salesUserInfo2.name+", region="+salesUserInfo2.region);
                },
                error   : function(){ alert("error") }
            }); // $.ajax()
            alert("the request is sent")

            function setCookie(name, value, region) {

                var cookie_value = value;
                var cookie_value2 = region;
                document.cookie = name + '=' + cookie_value + ',' + cookie_value2;
            }
            setCookie('name', salesUserInfo2.name, salesUserInfo2.region);

        });
    });


</script>
</body>
</html>