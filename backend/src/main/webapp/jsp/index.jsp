<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html>
<head>
    <title>HIVE</title>
    <link rel="icon" type="image/png" href="/logo.png" />
    <link rel="stylesheet" type="text/css" href="/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $('button#submit').attr('disabled', 'disabled');
            $('input#acronym').keyup(function() {
                var empty = false;
                if ($('input#acronym').val().length == 0)
                    empty = true;
                if (empty) {
                    $('button#submit').attr('disabled', 'disabled');
                } else {
                    $('button#submit').attr('disabled', false);
                }
            });
        });

        $(document).on('keypress',function(e) {
            if(e.which == 13) {
                $('button#submit').click();
            }
        });
    </script>
    <script src="/scripts/autocomplete.js"></script>
    <style>
        .autocomplete-items{
            background: white;
            width: 300px;
            position: relative;
            top: 85px;
            right: 33px;
            padding-top: 3px;
            padding-bottom: 3px;
            text-align: left;
        }
    </style>
</head>
<body bgcolor="#f5f6fa">
<center>
    <a href="https://liveramp-eng-hackweek.appspot.com">
        <img src="logo.png" , align="bottom">
    </a>
    <p id=title>Welcome on HIVE</p>
    <a href="https://chrome.google.com/webstore/detail/hoveriv/ikiohgcbnkecmddhpjgalmghfakgknaj">
        <p style="font-family: Flexo-Thin;">Download the Chrome extension.</p>
    </a>
    <form action="/browse" method="GET" autocomplete="off">
        <div>
            <a href="/acronym"><button type="button" style="width: 181px">Add / Edit</button></a>
            <a href="/csv"><button style="width: 181px" type="button">Add a CSV</button></a>
        </div>
        <div class="autocomplete">
            <input type="text" id="acronym" name="acronym" placeholder="Acronym..." style="font-weight: bold">
            <button type="submit" id="submit">Search</button>
        </div>
    </form>
</center>
</body>
</html>