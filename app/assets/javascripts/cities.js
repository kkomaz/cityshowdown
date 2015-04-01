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
}