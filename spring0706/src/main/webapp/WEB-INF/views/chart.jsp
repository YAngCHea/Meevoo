<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<title>차트 그리기</title>
		<style>
			#main{width:1000px; margin: 10px auto;}
			h3{width:1000px; text-align:center;}
			#chartBody{width:900px; height:500px; border: 1px solid black; margin:0 auto;}
		</style>
		<script>
			
			//controller에서 데이터 받아오는 함수호출
			function chartBtn(){
				alert("그래프가 그려집니다");
				
				// 그래프에 전달할 데이터 선언
				let chart_labels = [];
				let chart_data = [];
				
				
				//controller에서 데이터 가져오기
				$.ajax({
					url:"/chart_data",
					type:"post",
					dataType:"json", //json
					data:{"year":"2023"},
					success:function(data){
						alert("성공");
						console.log(data)
						
						// 데이터 추가 시작 -->
						chart_labels = ['1월', '2월', '3월', '4월', '5월', '6월'];
						chart_data = [120, 190, 30, 50, 20, 30];
						// 데이터 추가 끝 -->
						
						//그래프 그리기 함수호출
						createChart(chart_labels, chart_data);	
					},
					error:function(){
						alert("실패");
					}
					
				}); ///ajax
				
			} // chartBtn()
			
			
			
			//그래프 그리기
			function createChart(chart_labels, chart_data){
				
				// 그래프 시작 -->
				const ctx = document.getElementById('myChart');

				  new Chart(ctx, {
				    type: 'bar',
				    data: {
				      labels: chart_labels,
				      datasets: [{
				        label: '매출액 그래프',
				        data:  chart_data,
				        borderWidth: 1,
				        backgroundColor: [
	                           'rgba(255, 99, 132, 0.2)',
	                           'rgba(54, 162, 235, 0.2)',
	                           'rgba(255, 206, 86, 0.2)',
	                           'rgba(75, 192, 192, 0.2)',
	                           'rgba(153, 102, 255, 0.2)',
	                           'rgba(255, 159, 64, 0.2)']
				      }]
				    },
				    options: {
				      scales: {
				        y: {
				          beginAtZero: true
				        }
				      }
				    }
				  });
				// 그래프 끝 -->
			} //createChart()
			
		</script>
	</head>
	<body>
		<button onclick="chartBtn()">차트 데이터 불러오기</button>
		<br>
		<div id="main">
			<h3>매출액 그래프</h3>
			<div id="chartBody">
			  <canvas id="myChart"></canvas>
			</div>
		</div>
		
	</body>
</html>