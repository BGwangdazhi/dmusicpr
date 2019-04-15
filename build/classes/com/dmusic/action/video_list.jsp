<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="js/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.ajaxupload.js"></script>



<link rel="stylesheet" href="layer/theme/default/layer.css">
<script src="layer/layer.js"></script>



<script>
	$(function() {
		var videoAdd = $("#video_add");
		$.ajaxUploadSettings.name = 'file';
		var loading = null;
		videoAdd.ajaxUploadPrompt({
			url : 'dmusic/video_upload.action',

			beforeSend : function() {
				loading = layer.load();
			},

			success : function(data) {

				layer.close(loading);
				window.location.reload();

			},
			error : function() {
				alert('上传失败');
			}
		});
	})
</script>


</head>
<body>
	<div style="padding: 0px; margin: 0px;">
		<ul class="breadcrumb" style="margin: 0px;">
			<li><a href="#">系统管理</a></li>
			<li>员工管理</li>
		</ul>
	</div>
	<div class="row alert alert-info" style="margin: 0px; padding: 3px;">
		<form class="form-horizontal">
			<div class="col-sm-1">上传视频:</div>

			<input id="video_add" type="button" class="btn btn-success"
				value="上传视频" />
		</form>
	</div>
	<div class="row" style="padding: 15px; padding-top: 0px;"></div>


	<video   id="video" muted loop autoplay src="${video}"></video>



</body>
</html>