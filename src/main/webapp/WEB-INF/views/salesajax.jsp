<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
</head>
<body>

<h2>비동기통신으로 데이터 받기</h2>
<button id="sendBtn1" type="button">cookie</button>
<button id="sendBtn2" type="button">local</button>
<button id="sendBtn3" type="button">session</button>
<h2>Cookie :</h2>
<div id="data1"></div>
<h2>Local :</h2>
<div id="data2"></div>
<h2>Session :</h2>
<div id="data3"></div>
<script>
    $(document).ready(function(){
        let salesUserInfo = {};
        $("#sendBtn1").click(function(){
            $.ajax({
                type:'POST',
                url: '/getSalesInfo.do',
                headers : { "content-type": "application/json"},
                dataType : 'text',
                data : JSON.stringify(salesUserInfo),
                success : function(result){
                    var  salesInfo = JSON.parse(result);
                    alert("received="+result);
                    $("#data1").html("name="+salesInfo.salesUserInfo.name+", region="+salesInfo.salesUserInfo.region+", products="+salesInfo.salesProduct);

                    function setCookie(name, value, region,products) {

                        var cookie_value = value;
                        var cookie_value2 = region;
                        var cookie_value3 = products;
                        document.cookie = name + '=' + "name="+cookie_value + ", region=" + cookie_value2+ ", products=" + cookie_value3;
                    }
                    setCookie('name', salesInfo.salesUserInfo.name, salesInfo.salesUserInfo.region,salesInfo.salesProduct);
                },
                error   : function(){ alert("error") }

            }); // $.ajax()
            alert("the request is sent")



        });

        $("#sendBtn2").click(function(){
            const key = Object.keys(window.localStorage);

            const salesInfo = window.localStorage.getItem(key);

            $("#data2").html(salesInfo);

            alert("the request is sent")
        });


        $("#sendBtn3").click(function(){

            const key = Object.keys(window.sessionStorage);

            const salesInfos = window.sessionStorage.getItem(key);

            $("#data3").html(salesInfos);

            alert("the request is sent")
        });


    });


</script>

</body>
</html>