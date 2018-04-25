<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Biểu đồ thống kê</title>

<!-- load Google AJAX API -->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
	// Load the Visualization API and the piechart package.
	google.load('visualization', '1', {
		'packages' : [ 'columnchart' ]
	});

	// Set a callback to run when the Google Visualization API is loaded.
	google.setOnLoadCallback(drawChart);

	// Callback that creates and populates a data table,
	// instantiates the pie chart, passes in the data and
	// draws it.
	function drawChart() {

		// Create the data table.    
		var data = google.visualization.arrayToDataTable([
				[ 'Country', 'Area(square km)' ], 
				<c:forEach var="item" items="${listItem}">['${item.name}',${item.value}],</c:forEach>
				]);
		// Set chart options
		var options = {
			'title' : 'Thống kê sản phẩm theo danh mục',
			is3D : true,
			pieSliceText : 'label',
			tooltip : {
				showColorCode : true
			},
			'width' : 700,
			'height' : 300
		};

		// Instantiate and draw our chart, passing in some options.
		var chart = new google.visualization.PieChart(document
				.getElementById('Chart'));
		chart.draw(data, options);
	}
</script>

</head>
<body>

	<div id="rightContent">
		<h3>Thống kê</h3>

		<div id="Chart"></div>

	</div>
	<div class="clear"></div>


</body>
</html>