
(function() {
  document.frm.addEventListener("submit", handleSubmit);

  window.addEventListener('load', (e) => {
    const frm = document.frm;

    // check rememberMe
    // if (window?.localStorage) {
    //   const rememberMe = localStorage.getItem('rememberMe');
    //   let res;
    //   try {
    //     res = JSON.parse(rememberMe);
    //
    //     if (res?.checked === 'Y') {
    //       console.log('rememberMe');
    //       frm.rememberMe.checked = true;
    //       frm.username.value = res?.uid || '';
    //     }
    //
    //   } catch (err) {
    //     console.error('error occur during to retrieve rememberMe');
    //   }
    // }
    //
    // // auto login
    // if (frm.rememberMe.checked) {
    //   window.FirbMobile && FirbMobile.request.userInfo(autoSubmit);
    // }
  })

  function autoSubmit(autoLogin, id, secret) {
    const frm = document.frm;
    frm.username.value = id;
    frm.password.value = secret;
    frm.submit();
  }

  function handleSubmit(e) {
    e.preventDefault();
    const frm = document.frm;

    // if (frm.rememberMe.checked) {
    //   window.FirbMobile && FirbMobile.request.saveUserInfo('Y', frm.username.value, frm.password.value);
    //   localStorage.setItem('rememberMe', JSON.stringify({checked: 'Y', uid: frm.username.value}));
    // } else {
    //   window.FirbMobile && FirbMobile.request.saveUserInfo('N', '', '');
    //   localStorage.setItem('rememberMe', JSON.stringify({checked: 'N'}));
    // }

    frm.submit();
  }

})();
