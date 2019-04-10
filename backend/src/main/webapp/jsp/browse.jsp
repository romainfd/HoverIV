<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
  <title>HoverIV - Post an Acronym</title>
  <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body bgcolor="#f5f6fa">
<center>
  <img src="/logo.png" , align="bottom">
  <p id=title>HoverIV</p>
  <form action="" method="GET">
    <div style="font-family: Flexo-Demi; font-size:14pt">${meaning}</div>
    <div>
      <p>${description}</p>
    </div>
    <div>
      <label style="font-style: italic">Synonyms</label>
      <label style="font-style: italic">${synonyms}</label>
    </div>
    <div class="button">
      <button type="submit">Reset</button>
    </div>
  </form>
</center>
</body>
</html>