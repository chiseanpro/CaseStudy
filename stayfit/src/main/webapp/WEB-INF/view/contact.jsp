<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Contact Me</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/contactstyle.css">

  <style>
    body{
      background-image: url('${pageContext.request.contextPath}/resources/images/home-background.jpg');
      background-position: center center;
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
      color:white;
    }

    hr{
      border: dotted white 6px;
      border-bottom: none;
      width: 10%;
      margin: 100px auto;
    }

    .contact{
      font-size: 1.5em;
    }

  </style>
</head>
<body class="contactme-body">
  <h1>THANK YOU</h1>
  <hr>
  <div class="donation-container">
    <h2>Donate With Paypal:</h2>
  <form action="https://www.paypal.com/cgi-bin/webscr" method="post">

      <!-- Identify your business so that you can collect the payments. -->
      <input type="hidden" name="business"
          value="shanshuochi@yahoo.com">

      <input type="hidden" name="cmd" value="_donations">

      <input type="hidden" name="currency_code" value="USD">

      <input type="image" name="submit"
      src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif"
      alt="Donate">
      <img alt="" width="1" height="1"
      src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" >
  </form>
  </div>
  <hr>
  <div class="contactme-container">
    <h2>Want To Send Me A Message?</h2>
    <form class="contact" action="mailto:chiseanpro@gmail.com" method="post" enctype="text/plain">
  <label>Name:</label>
  <input type="text" name="yourName" value=""><br>
  <label>Email:</label>
  <input type="email" name="youEmail" value=""><br>
  <label>Message</label><br>
  <textarea name="yourMessage" rows="10" cols="30"></textarea><br>
  <input type="submit" name="" value="SEND MESSAGE">
  </form>
  </div>

</body>
</html>