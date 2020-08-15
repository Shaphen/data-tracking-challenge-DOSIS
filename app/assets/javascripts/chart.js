document.addEventListener("DOMContentLoaded", function () {
  Highcharts.chart('data-chart', {
    title: {
      text: gon.worker_name + "'s Metrics"
    },
    xAxis: {
      categories: gon.dates
    },
    yAxis: {
      title: {
        text: 'Amount'
      }
    },
    series: [{
      type: 'column',
      name: 'Nectar (hundreds)',
      data: gon.nectars
    }, {
      type: 'line',
      name: 'Pollen Globs',
      data: gon.pg_values
    }]
  });
});