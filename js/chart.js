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
    type: 'bar2d',
    renderAt: 'chart',
    width: '100%',
    height: '100%',
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
    // document.getElementById("chart1").onclick = function () {
    //     fusioncharts.chartType('pie2d');
    // }

    // document.getElementById("chart2").onclick = function () {
    //     fusioncharts.chartType('bar2d');
    // }

    var chartTypeSelect = document.getElementById("chartType");
    chartTypeSelect.addEventListener('change', function () {
        var selectedChartType = chartTypeSelect.value;
        console.log('HELLO');
        console.log(chartTypeSelect);
        if (selectedChartType == "pie2d") {
            fusioncharts.chartType('pie2d');
        console.log('HELLO');

        }
        else if (selectedChartType == "bar2d") {
            fusioncharts.chartType('bar2d');
        console.log('HELLO');

        }
    });


    document.getElementById("export").addEventListener("click", function() {
        FusionCharts.batchExport({
          "exportFormat": "PDF"
        });
      });




})();












