<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Group3Workspace</title>
    <script type="text/javascript" src="https://cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
    <script type="text/javascript" src="https://cdn.fusioncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>
    <link rel="stylesheet" href="./css/main.css">
</head>

<body>
    <div>
        <h1>My Performance Dashboard</h1>
    </div>
    <div>
        <nav>
            <ul>
                <li><a href="./my_dashboard.php">My Dashboard</a></li>
                <li><a href="./dashboard.php">Waterman Group</a></li>
            </ul>
        </nav>
    </div>


    <div id="chart-container">
        <div id="chart">Chart Should Load Here...</div>
        <select id="chartType">
            <option value="bar2d">Bar Chart</option>
            <option value="pie2d">Pie Chart</option>
        </select>
    </div>
    



    <script src="./js/chart.js"></script>
</body>

</html>