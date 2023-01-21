<html>
    <head>
        <link rel="stylesheet" type="text/css" href="assets/css/login .css" />
    </head>
<body>
    <div class="back"><br><br>
    <p class="tip">MASTER PLAITING</p>
<div class="cont">
  <form action="${pageContext.request.contextPath }/account" method="Post">
      <div class="form sign-in"><br><br><br><br>
    <h2>Welcome back,</h2>
    <label>
      <span>Email</span>
      <input type="email" name="email" />
    </label>
    <label>
      <span>Password</span>
      <input type="password" name="psw" />
    </label>
    <label>
        <span>captcha</span><br>
         <img src="captcha-image"/><br/>
	<input type="text" name="captcha"/>
	<br/>
	${error }
    </label>
    <button type="submit" class="submit">Log In</button>
  </form>
    <button type="submit" class="fb-btn"><a href="https://www.facebook.com">Connect with <span>
                facebook</span></button></a>
  </div>
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
        <h2>New here?</h2>
        <p>Sign up and discover the world</p>
      </div>
      <div class="img__text m--in">
        <h2>One of us?</h2>
        <p>If you already has an account, just log in. We've missed you!</p>
      </div>
      <div class="img__btn">
        <span class="m--up">Sign Up</span>
        <span class="m--in">Log In</span>
      </div>
    </div>
    <form action="RegServlet" method="Post" id="loginForm">
      <div class="form sign-up"><br><br><br>
      <h2>Time to feel like Paradise,</h2>
      <label>
        <span>Email</span>
        <input type="email" id="email" name="email" />
      </label>
      <label>
        <span>Password</span>
        <input type="password" id="psw" name="psw" />
      </label>
      <label>
        <span>Repeat Password</span>
        <input type="password" id="psw-repeat" name="psw-repeat" />
      </label>
      <button type="submit" class="submit">Sign Up</button>
    </form>
      <button type="submit" class="fb-btn" ><a href="https://www.facebook.com">Join with <span>
                  facebook</span></button></a>
    </div></div>
</div><br><br>
</div>
</body>
</html>
<script>
    document.querySelector('.img__btn').addEventListener('click', function() {
  document.querySelector('.cont').classList.toggle('s--signup');
});
</script>