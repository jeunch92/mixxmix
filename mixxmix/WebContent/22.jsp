
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR">
    <title>Line_Controls_Chart</title>
 
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <!-- google charts -->
       <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  </head>
  <body>
 
    <h4>����Ʈ �湮�� ���� ��Ȳ �׷���</h4>
 
    <div id="Line_Controls_Chart">
      <!-- ���� ��Ʈ ������ ���� -->
          <div id="lineChartArea" style="padding:0px 20px 0px 0px;"></div>
      <!-- ��Ʈ�ѹٸ� ������ ���� -->
          <div id="controlsArea" style="padding:0px 20px 0px 0px;"></div>
        </div>
 
  </body>
 
  <script>
  var chartDrowFun = {
 
    chartDrow : function(){
        var chartData = '';
 
        //��¥���� �����ϰ� �����ø� �� �κ� �����ϼ���.
        var chartDateformat     = 'yyyy��MM��dd��';
        //������Ʈ�� ���� ��
        var chartLineCount    = 5;
        //��Ʈ�ѷ� �� ��Ʈ�� ���� ��
        var controlLineCount    = 10;
 
 
        function drawDashboard() {
 
          var data = new google.visualization.DataTable();
          //�׷����� ǥ���� �÷� �߰�
          data.addColumn('datetime' , '��¥');
          data.addColumn('number'   , '����');
          data.addColumn('number'   , '����');
          data.addColumn('number'   , '��ü');
 
          //�׷����� ǥ���� ������
          var dataRow = [];
 
          for(var i = 0; i <= 7; i++){ //���� ������ ����
            var total = Math.floor(Math.random() * 10) + 1;
            var man = Math.floor(Math.random() * total) + 1;
           var woman = total-man;
 
            dataRow = [new Date('2018', '07', i , '10'), man,woman, total];
            data.addRow(dataRow);
          }
 
 
            var chart = new google.visualization.ChartWrapper({
              chartType   : 'LineChart',
              containerId : 'lineChartArea', //���� ��Ʈ ������ ����
              options     : {
                              isStacked   : 'percent',
                              focusTarget : 'category',
                              height          : 500,
                              width              : '100%',
                              legend          : { position: "top", textStyle: {fontSize: 13}},
                              pointSize        : 5,
                              tooltip          : {textStyle : {fontSize:12}, showColorCode : true,trigger: 'both'},
                              hAxis              : {format: chartDateformat, gridlines:{count:chartLineCount,units: {
                                                                  years : {format: ['yyyy��']},
                                                                  months: {format: ['MM��']},
                                                                  days  : {format: ['dd��']},
                                                                  hours : {format: ['HH��']}}
                                                                },textStyle: {fontSize:12}},
                vAxis              : {minValue: 25,viewWindow:{min:0},gridlines:{count:-1},textStyle:{fontSize:12}},
                animation        : {startup: true,duration: 1000,easing: 'in' },
                annotations    : {pattern: chartDateformat,
                                textStyle: {
                                fontSize: 15,
                                bold: true,
                                italic: true,
                                color: '#871b47',
                                auraColor: '#d799ae',
                                opacity: 0.8,
                                pattern: chartDateformat
                              }
                            }
              }
            });
 
            var control = new google.visualization.ControlWrapper({
              controlType: 'ChartRangeFilter',
              containerId: 'controlsArea',  //control bar�� ������ ����
              options: {
                  ui:{
                        chartType: 'LineChart',
                        chartOptions: {
                        chartArea: {'width': '60%','height' : 80},
                          hAxis: {'baselineColor': 'none', format: chartDateformat, textStyle: {fontSize:12},
                            gridlines:{count:controlLineCount,units: {
                                  years : {format: ['yyyy��']},
                                  months: {format: ['MM��']},
                                  days  : {format: ['dd��']},
                                  hours : {format: ['HH��']}}
                            }}
                        }
                  },
                    filterColumnIndex: 0
                }
            });
 
            var date_formatter = new google.visualization.DateFormat({ pattern: chartDateformat});
            date_formatter.format(data, 0);
 
            var dashboard = new google.visualization.Dashboard(document.getElementById('Line_Controls_Chart'));
            window.addEventListener('resize', function() { dashboard.draw(data); }, false); //ȭ�� ũ�⿡ ���� �׷��� ũ�� ����
            dashboard.bind([control], [chart]);
            dashboard.draw(data);
 
        }
          google.charts.setOnLoadCallback(drawDashboard);
 
      }
    }
 
$(document).ready(function(){
  google.charts.load('current', {'packages':['line','controls']});
  chartDrowFun.chartDrow(); //chartDrow() ����
});
  </script>
</html>