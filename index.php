<!DOCTYPE html>
<html>
<head>
    <title>Dynamic Time Display</title>
</head>
<body>
    <p>Hello World! Bob</p>
    <p>Current Time: <span id="current-time">
        <?php
            echo date("Y-m-d H:i:s");
        ?>
    </span></p>

    <script>
        function updateCurrentTime() {
            const currentTimeElement = document.getElementById('current-time');
            const now = new Date();
            const formattedTime = now.toLocaleString();
            currentTimeElement.textContent = formattedTime;
        }

        updateCurrentTime();

        setInterval(updateCurrentTime, 1000);
    </script>
</body>
</html>

<?php
    phpinfo();
?>
