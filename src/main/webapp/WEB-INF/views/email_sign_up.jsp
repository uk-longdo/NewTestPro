<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="./resources/css/sign_up.css"/>
    
    <style>
       
    
    </style>
</head>
<body>
<form action="insertdo" method="post">
    <div id="webrap">

        <div class="box_name">
        	아이디*
            <input type="text" placeholder="아이디를 입력해주세요." name="id">
            이메일*
            <input type="email" placeholder="ID@example.com" name="email">
            비밀번호*
            <input type="password" placeholder="영문,숫자,특수문자 2가지 조합 6~15자" name="password">
            비밀번호확인*
            <input type="password" placeholder="비밀번호를 한번 더 입력해주세요." name="pw">
            전화번호*
            <input type="tel" placeholder="전화번호를 입력해주세요." name="tel">
             이름*
            <input type="text" placeholder="이름을 입력해 주세요." name="name">
            
        <div class="box_che">
            <input type="checkbox">
            전체약관동의
            <div class="box_ch2">
               
                <div>
                  <input type="checkbox">
                    회원 가입 및 운영약관 동의(필수)
                </div>
                <div>
                     <input type="checkbox">
                    개인정보 수집 및 이용(필수)
                </div>
                 <div>
                 <input type="checkbox">
                위치정보 이용약관(선택)
                </div>
                <div>
                     <input type="checkbox">
                    특가 항공권 및 할인 례택 안내 동의(선택)
                </div>
            </div>
            </div>
   
           <div class="lo_lo">
            <input type="submit" value="회원가입" class="log_up">
           </div>    
              </div>     
    </div>
   </form>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>

    
<script>
    $(document).ready(function(){
        $(".log_up").click(function(){
            location.href='index.html';
        });
    });
</script>
</body>
</html>