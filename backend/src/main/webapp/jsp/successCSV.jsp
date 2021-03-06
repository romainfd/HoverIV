<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html>
<head>
  <title>HIVE - Success!</title>
  <link rel="icon" type="image/png" href="/logo.png" />
  <link rel="stylesheet" type="text/css" href="/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script>
      $(document).on('keypress',function(e) {
          if(e.which == 13) {
              $('button#submit').click();
          }
      });
  </script>
</head>
<body bgcolor="#f5f6fa">
<center>
  <a href="https://liveramp-eng-hackweek.appspot.com">
    <img src="/logo.png" , align="bottom">
  </a>
  <p id=title>HIVE</p>
  <form action="/csv" method="GET">
    <div style="font-size: 14pt">Success! Posted ${posted} acronyms.</div>
    <div class="button">
      <button type="submit" id="submit">Back</button>
    </div>
  </form>
</center>
</body>
</html>