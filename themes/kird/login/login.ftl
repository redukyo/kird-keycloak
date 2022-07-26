<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>
    <#if section = "form">
    <form id="kc-form-login" name="frm" action="${url.loginAction}" method="post">
      <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>


      <div>
        <div class="inputBox">
          <dl class="userId">
            <dt>아이디/사업자번호</dt>
            <dd>
              <#if usernameEditDisabled??>
                  <input id="username" class="iptId" name="username" value="${(login.username!'')}" title="아이디 또는 사업자번호 입력" placeholder="아이디 혹은 사업자번호 입력" type="text" style="text-transform:lowercase;" disabled />
              <#else>
                  <input id="username" class="iptId" name="username" value="${(login.username!'')}" title="아이디 또는 사업자번호 입력" placeholder="아이디 혹은 사업자번호 입력" type="text" style="text-transform:lowercase;" autofocus autocomplete="off"
                         aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>"
                  />
              </#if>
<#--                    <button type="button" class="btnDel">-->
<#--                      <span class="hidden">삭제</span>-->
<#--                    </button>-->
            </dd>
          </dl>
          <dl class="userPw"> <!-- add class - failPc : 비밀번호 입력오류 -->
            <dt>비밀번호</dt>
            <dd>
              <input id="password" class="iptPw" name="password" type="password" autocomplete="off" title="비밀번호 입력" placeholder="비밀번호 입력"
                     aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>"
              />
<#--                    <button type="button" class="btnView">-->
<#--                      <span class="hidden">비밀번호 보기</span>-->
<#--                    </button>-->
              <#if messagesPerField.existsError('username','password')>
                <span class="failMsg">잘못된 아이디 또는 비밀번호 입니다.</span>
              </#if>
            </dd>
          </dl>
          <div class="userOpt">
            <div class="optSave">
                <#if realm.rememberMe && !usernameEditDisabled??>
                    <div class="checkbox">
                        <label>
                            <#if login.rememberMe??>
                                <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked> ${msg("rememberMe")}
                            <#else>
                                <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox"> ${msg("rememberMe")}
                            </#if>
                        </label>
                    </div>
                </#if>
            </div>
            <div class="optSearch">
              <a href="/findUser" class="linkSearch">아이디･비밀번호 찾기</a>
            </div>
          </div>
        </div>

        <div class="btnBox">
          <button class="btn login blue ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}"
                  name="login" id="kc-login" type="submit">로그인</button>
        </div>

      </div>


    </form>

    </#if>

</@layout.registrationLayout>
