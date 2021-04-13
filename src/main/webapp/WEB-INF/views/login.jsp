<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        *,html,body{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        #web_log{
            
            width: 100%;
            height: 100vh;
            background: black; 
            background-color: rgba(0,0,0,0.9);
            align-items: center;
            display: flex;
            justify-content: center;
            
        }
        .box_one{
            background: black;   
            width: 800px;
            height: 800px;
            
            position: relative;
        }
        .box_one > img{
            margin: 0 auto;
            width: 400px;
            height: 100px;            
            position: absolute;
            top: 20px;
            left: 25%;
        }
        .box1{
            
            width: 400px;
            height: 100px;            
            position: absolute;
            top: 30%;
            left: 25%;
            
        }
        .box2{
            
            width: 400px;
            height: 100px;            
            position: absolute;
            top: 45%;
            left: 25%;
            
        }
        
        .box3{
            width: 400px;
            height: 100px;            
            position: absolute;
            top: 70%;
            left: 25%;
        }
        .box1>input{
            width: 100%;
            height: 50px;
            position: absolute;
            top: 30px;
            left: 0px;
            background: #DEDEDE;
            border-radius: 5px;
        }
        .box2>input{
            width: 100%;
            height: 50px;
            position: absolute;
            top: 30px;
            left: 0px;
            background: #DEDEDE;
            border-radius: 5px;
        }
        .logbox{
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0, auto;
            margin-top: 30px;
            
        }
        .logbox>input{
            width: 30%;
            height: 30px;   
            margin-right: 10px;
            background: #0275d8;
            cursor: pointer;
            box-shadow: 0px 3px 3px #0275d8;
            border-radius: 10px;
        }
    </style>
</head>
<body>
<form action="id_login">
    <div id="web_log">
        <div class="box_one">
            <img src="./resources/img/title.png">
            <div class="box1">ID:
                <input type="text" placeholder="아이디를 입력해주세요" name="id">
            </div>
            <div class="box2">PassWord:
                <input type="password" placeholder="패스워드를 입력해주세요" name="password">
            </div>
            <div class="box3">
                <div class="logbox">
                    <input type="submit" value="로그인" class="log_in">
                    <input type="button" value="회원가입" class="log_up">
                </div>
            </div>
        </div>
    </div>
    </form>
    
    
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
    
    
    $(document).ready(function(){
        $(".log_up").click(function(){
            location.href='email_sign_up';
        })
        $(".log_in").click(function(){
            location.href='#';
        })
    });
    
    
</script>
</body>
</html>