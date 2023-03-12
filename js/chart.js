//STEP 2 - Chart Data
const chartData = [{
    "label": "Venezuela",
    "value": "290"
}, {
    "label": "Saudi",
    "value": "260"
}, {
    "label": "Canada",
    "value": "180"
}, {
    "label": "Iran",
    "value": "140"
}, {
    "label": "Russia",
    "value": "115"
}, {
    "label": "UAE",
    "value": "100"
}, {
    "label": "US",
    "value": "30"
}, {
    "label": "China",
    "value": "30"
}];

//STEP 3 - Chart Configurations
const chartConfig = {
    type: 'column2d',
    renderAt: 'chart-container',
    width: '50%',
    height: '50%',
    dataFormat: 'json',
    dataSource: {
        // Chart Configuration
        "chart": {
            "caption": "Countries With Most Oil Reserves [2017-18]",
            "subCaption": "In MMbbl = One Million barrels",
            "xAxisName": "Country",
            "yAxisName": "Reserves (MMbbl)",
            "numberSuffix": "K",
            "theme": "fusion",
        },
        // Chart Data
        "data": chartData
    }
};

var fusioncharts = new FusionCharts(chartConfig);



FusionCharts.ready(function () {
    fusioncharts.render();
});









(function () {
    document.getElementById("chart1").onclick = function () {
        fusioncharts.chartType('pie2d');
    }

    document.getElementById("chart2").onclick = function () {
        fusioncharts.chartType('bar2d');
    }

    document.getElementById("chart3").onclick = function () {
        fusioncharts.chartType('chord');
    }
})();

