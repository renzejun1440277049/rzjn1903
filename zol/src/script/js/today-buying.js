; !function () {
	//1.拼接数据
	$.ajax({
		url: 'http://localhost/zol/php/zoldata.php',
		dataType: 'json'
	}).done(function (data) {
		var $html = '<ul>';
		/* console.log(data); */
		$.each(data, function (index, value) {
			$html += `
				<li>
					<a href="details.html?sid=${value.sid}" target="_blank">
						<img width=154 height=154 src="${value.url}" />
						<h4>${value.titile}</h4>
						<p>¥${value.price}</p>
					</a>
				</li>
			`;
		});
		$html += '</ul>';
		$('#today-buying .content').html($html);

	});
}();


