<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false showAnotherWayIfPresent=true>
<!doctype html>
<html lang="ko">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="format-detection" content="telephone=no">
  <title>LOGIN | KIRD</title>

  <link rel="stylesheet" href="${url.resourcesPath}/css/default.css">
  <link rel="stylesheet" href="${url.resourcesPath}/css/kird7.css">

  <script src="${url.resourcesPath}/js/jquery-3.4.1.min.js"></script>
  <script src="${url.resourcesPath}/js/fontfaceonload.js"></script>
  <script src="${url.resourcesPath}/js/firb-mobile-api-bundle.js"></script>
  <script defer src="${url.resourcesPath}/js/kird-2.1.2.js"></script>

  <style>
  .lytLogin .loginArea {position:relative;}

  .loginInfo {position:absolute; right:92px; top:60px; width:calc(632px - 184px); padding:20px 50px; background:rgba(0,0,0,.05); border-radius:5px;}
    .loginInfo .txt_s14cBlack {font-size:0.875rem; word-break:keep-all;}
    .loginInfo .txt_s14cBlack + .txt_s14cBlack {padding-top:12px;}
    .loginInfo .cBlue {color:#3c89f9; font-size:15px; text-decoration:underline;}

    .li_memo {padding-top:20px; font-size:0.875rem;}
      .li_memo b {padding-right:5px; color:#333; font-weight:600;}
      .li_memo .cBlue {color:#3c89f9; font-weight:600;}      
      .li_memo a.cBlue {padding-left:5px; font-weight:600; text-decoration:none;}

  @media screen and (min-width: 100px) and (max-width: 1023px) {  
    .lytLogin .contField {margin-bottom: 30px;}
    .loginInfo {position:relative; top:auto; right:auto; width:100%; margin-top:25px; padding:20px; border-radius:0;}
      .loginInfo .cBlue br {display:none;}
  }
  </style>

  <script>
    document.addEventListener("DOMContentLoaded", function() {
      try {
        const agent = window.navigator.userAgent.toUpperCase();
        const isMobileApp = agent.includes("FIRBMOBILE");
        if (isMobileApp) {
          document.querySelector(".linkBox").innerHTML = `<p class="linkTxt">회원가입은 PC에서만 가능합니다.</p>`;
        }
      } catch(err) {
        console.error(err);
      }
    });
  </script>
</head>
<body>
<div class="wrap">

  <!-- 서브페이지 > 서브타이틀 (PC:none, M:white, position:static) -->
  <div class="lytSubVisual type03">
    <div class="subVisualArea">
      <div class="subvisual">
        <button class="mBtnback" onclick="history.back();">뒤로가기</button>
        <div class="tit"><h2>로그인</h2></div>
      </div>
    </div>
  </div>


  <!-- 로그인 페이지 메인 -->
  <div class="lytLogin">
    <div class="loginArea">
      
      <div class="loginGroup">
        <div class="logoField">
          <h1 class="logo">
            <a href="/">KIRD 국가과학기술인력개발원</a>
          </h1>
        </div>
        <div class="contField">
          <div class="titBox">
            <h2 class="tit">로그인</h2>
          </div>

          <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
            <div class="alert-error ${properties.kcAlertClass!} pf-m-<#if message.type = 'error'>danger<#else>${message.type}</#if>">
              <div class="pf-c-alert__icon">
                  <#if message.type = 'success'><span class="${properties.kcFeedbackSuccessIcon!}"></span></#if>
                  <#if message.type = 'warning'><span class="${properties.kcFeedbackWarningIcon!}"></span></#if>
                  <#if message.type = 'error'><span class="${properties.kcFeedbackErrorIcon!}"></span></#if>
                  <#if message.type = 'info'><span class="${properties.kcFeedbackInfoIcon!}"></span></#if>
              </div>
              <span class="pf-c-alert__title">${kcSanitize(message.summary)?no_esc}</span>
            </div>
          </#if>

          <#nested "form">

          <div class="linkBox">
            <p class="linkTxt">알파캠퍼스 회원이 아니시면 <a href="/signup/type" class="linkJoin">지금 가입해보세요.</a></p>
          </div>
        </div>
        <div class="cmtField">
          <em class="cmtTxt">본 시스템에 불법적인 접근 및 사용 시 관련 법규에 의해 처벌될 수 있습니다.</em>
        </div>
      </div>

      <div class="loginInfo">
        <p class="txt_s14cBlack">국가과학기술인력개발원 교육시스템 및 이러닝 포털<br>
        사용자 정보를 알파캠퍼스로 통합이관 하기 위해<br>
        부득이 영문대문자가 포함된 ID를 소문자로 일괄 전환하였습니다.(비밀번호는 이전과 동일)</p>

        <p class="txt_s14cBlack">소문자 전환에 의해 다른 회원과 ID가 중복되거나<br>
        기존에 특수문자가 포함된 ID를 사용중인 사용자에 한해<br>
        아이디 변경 후 로그인이 가능합니다.</p>

        <p class="txt_s14cBlack">이용에 불편을 드려 죄송합니다.<p>

        <div class="li_memo">
          <b>학습지원센터 안내</b> <span>1588-5834</span> <a href="https://alpha-campus.kr/support/notice" class="cBlue">[공지사항 바로가기]</a><br>
          <b>평일</b> 09:00~18:00 (토/공휴일 휴무)<br>
          <b>점심</b> 12:00~13:00
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>

</#macro>
