// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


// city_post_path(@city, post)

// $(function(){
// 	showPostListener();
// });

// function showPostListener(){
// 	$(div.post).on("click", showPost);
// }

// function showPost(e){
// 	e.preventDefault;
// 	var url = $(this).
// 	$.ajax()
// }

$(function(){
	categoryListener();
	closePostListener();
});

function categoryListener(){
	$('div.categories a').on("click", showCategory);
}

function showCategory(e){
	e.preventDefault();

	var url = $(this).attr("href");

	$.ajax(url, {
		"method": 'get',
		"dataType": "script"
	});

	$(this).blur();
	// $(this).addClass('selected');
}

function closePostListener(){
	$('a.X').on("click, adjustMasonry");
}

function adjustMasonry(){
	$("div.js-masonry").masonry();
}