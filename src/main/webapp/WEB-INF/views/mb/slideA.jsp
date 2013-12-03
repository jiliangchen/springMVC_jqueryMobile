<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html class="index">
<head>
<meta http-equiv="content-type" content="text/html;charset=iso-8859-1" />
<meta name="author" content="www.frebsite.nl" />
<meta name="viewport"
	content="width=device-width initial-scale=1.0 maximum-scale=1.0 user-scalable=yes" />

<title>jQuery.mmenu - jQuery Mobile</title>

<link rel="stylesheet"
	href="<c:url value='/resources/css/mb/jquery.mobile-1.2.0.min.css' />" />
<link type="text/css" rel="stylesheet"
	href="<c:url value='/resources/css/mb/demo.css' />" />
<link type="text/css" rel="stylesheet"
	href="<c:url value='/resources/css/mb/jquery.mmenu.css' />" />
<link type="text/css" rel="stylesheet"
	href="<c:url value='/resources/css/mb/idangerous.swiper.css' />" />

<script type="text/javascript"
	src="<c:url value='/resources/js/jquery-1.10.2.js' />"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/jquery.mmenu.js' />"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/jquery.mobile-1.3.2.min.js' />"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/idangerous.swiper-2.1.min.js' />"></script>
<script type="text/javascript">
	$(function() {
		// Slideshow 1
		var mySwiper = new Swiper('.swiper-container', {
			pagination : '.pagination',
			paginationClickable : true
		});

		$('#menu').mmenu({
			onClick : {
				blockUI : false,
				preventDefault : function() {
					return this.rel != 'external';
				}
			}
		}, {
			pageSelector : 'div[data-role="page"]:first'
		});

		$('#menu a[rel!="external"]').on('click', function() {
			var _t = this;
			$('#menu').one('closed.mm', function() {
				$.mobile.changePage(_t.href, {
					transition : 'slide'
				});
			});
		});

		$("#menu_link").removeClass();
		$("#menu_link").empty();
	});

	$(document)
			.on(
					'pageshow',
					function(e, ui) {
						$('#menu').trigger('setPage', [ $(e.target) ]);
						$('#menu a')
								.each(
										function() {
											if ($.mobile.path
													.parseUrl(this.href).href == window.location.href) {
												$(this).trigger(
														'setSelected.mm');
											}
										});
					});
</script>
<style>
img {
	width: 100%;
	height: auto;
}
</style>
</head>
<body>
	<div data-role="page">
		<div data-role="header" class="header" data-theme="b">
			<a href="#menu" id="menu_link"></a>
			<h3>XXXX科技有限公司</h3>
		</div>
		<div id="content" data-role="content">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide red-slide">
						<div class="title">Slide 1</div>
					</div>
					<div class="swiper-slide blue-slide">
						<div class="title">Slide 2</div>
					</div>
					<div class="swiper-slide orange-slide">
						<div class="title">Slide 3</div>
					</div>
					<div class="swiper-slide green-slide">
						<div class="title">Slide 4</div>
					</div>
					<div class="swiper-slide pink-slide">
						<div class="title">Slide 5</div>
					</div>
					<div class="swiper-slide red-slide">
						<div class="title">Slide 6</div>
					</div>
					<div class="swiper-slide blue-slide">
						<div class="title">Slide 7</div>
					</div>
					<div class="swiper-slide orange-slide">
						<div class="title">Slide 8</div>
					</div>
				</div>
				<div class="pagination"></div>
			</div>

			<ul data-icon="star" data-inset="true" data-role="listview"
				class="ui-listview ui-listview-inset ui-corner-all ui-shadow">
				<li data-role="list-divider" role="heading"
					class="ui-li ui-li-divider ui-bar-b ui-corner-top">企业动态</li>
				<li data-corners="false" data-shadow="false" data-iconshadow="true"
					data-wrapperels="div" data-icon="arrow-r" data-iconpos="right"
					data-theme="c"
					class="ui-btn ui-btn-icon-right ui-li-has-arrow ui-li ui-li-has-count ui-btn-up-c">
					<a href="index.html" class="ui-link-inherit">XXXXXX获留学归国人员择优项目国家资金奖励</a>
				</li>
				<li data-corners="false" data-shadow="false" data-iconshadow="true"
					data-wrapperels="div" data-icon="arrow-r" data-iconpos="right"
					data-theme="c"
					class="ui-btn ui-btn-icon-right ui-li-has-arrow ui-li ui-li-has-count ui-btn-up-c">
					<a href="index.html" class="ui-link-inherit">XXXX云任务软件已获得著作权证书</a>
				</li>
			</ul>
		</div>
		<div data-role="footer" class="footer" data-theme="b">
			<h3>XXXX科技有限公司 版权所有 © 2012</h3>
		</div>
	</div>

	<div id="page2" data-role="page">
		<div class="header">
			<a href="#menu" data-ajax="false"></a> jQuery Mobile
		</div>
		<div class="content" data-role="content">
			<p>This is the internal testpage (#page2).</p>
			<ul>
				<li><a href="#menu">Open the menu.</a></li>
				<li><a href="index.html">Go to &quot;index.html&quot; (the
						original page).</a></li>
				<li><a href="page3.html">Go to &quot;page3.html&quot; (an
						external page).</a></li>
			</ul>
		</div>
	</div>

	<nav id="menu">
		<ul>
			<li class="Selected"><a href="index.html">Page 1</a></li>
			<li><a href="index.html#page2">Page 2</a></li>
			<li><a href="page3.html">Page 3</a></li>
			<li class="Label">External</li>
			<li><a href="../index.html" rel="external">Back to the
					documentation</a></li>
		</ul>
	</nav>
</body>
</html>