var handler = null;
var page = 1;
var isLoading = false;
var apiURL = 'http://localhost:3000/photos.json';

var options = {
	autoResize: true
,	container: $('#main')
,	offset: 10
,	itemWidth: 222
};

/**
 * When scrolled all the way to the bottom, add more tiles.
 */
function onScroll(event) {
	// Only check when we're not still waiting for data.
	if(!isLoading) {
		// Check if we're within 100 pixels of the bottom edge of the broser window.
		var closeToBottom = ($(window).scrollTop() + $(window).height() > $(document).height() - 100);
		if(closeToBottom) {
			loadData();
		}
	}
};

/**
* Refreshes the layout.
*/
function applyLayout() {
	// Create a new layout handler.
	handler = $('#tiles li');

	$("#tiles li:last img").load(function(){ // Capture scroll event.
		handler.wookmark(options);
	});
};

/**
* Loads data from the API.
*/
function loadData() {
	isLoading = true;
	$('#loaderCircle').show();

	$.ajax({
		url: apiURL,
		dataType: 'json',
		data: {page: page}, // Page parameter to make sure we load new data
		success: onLoadData
	});
};

/**
 * Receives data from the API, creates HTML for images and updates the layout
 */
function onLoadData(data) {

	isLoading = false;
	$('#loaderCircle').hide();

	// Increment page index for future calls.
	page++;

	// Create HTML for the images.
	var html = ''
	,	i = 0
	,	length = data.photos.length
	,	image
	,	tmpl = '<% _.each(data, function(image) { %> '
			+	'<li class="imageBox">'
			+	'<figure class="imagemodal">'
			+	'<img class="move" src="<%= image.avatar_file_name %>" width="200" data-pos="<%= image.id %>">'
			+	'<figcaption><%= image.name %>'
			+	'</figcaption>'
			+	'</figure>'
			+	'<p class="picname"></p>'
			+	'<div class="prefecturemenu">'
			+	'<span class="prefectureaic typcn" data-pos="<%= image.id %>"></span>'
			+	'<p class="prefecture"><%= image.prefecture %></p>'
			+	'</div>'
			+	'<div class="menu">'
			+	'<div class="piceyemenu">'
			+	'<div class="picmenu">'
			+	'<span class="likephoto typcn" data-pos="<%= image.id %>"></span>'
			+	'<span class="likenum"><%= image.like %></span>'
			+	'</div>'
			+	'<div class="lookmenu">'
			+	'<span class="lookphoto typcn" data-pos="<%= image.id %>"></span>'
			+	'<span class="looknum"><%= image.look %></span>'
			+	'</div>'
			+	'</div>'
			+	'</div>'
			+	'</li><% }); %>';

	// Add image HTML to the page.
	$('#tiles').append(_.template(tmpl, {data: data.photos}));

	// Apply layout.
	applyLayout();

	/* $("span").on("click",function(){

	});*/
};

$(document).ready(new function() {

	/*$('.flexslider').flexslider({
		animation: "slide"
	});*/

	$(".menubtn").click(function() {
		$("#menu").toggleClass('togmenu');
	});

	$(document).bind('scroll', onScroll);

		loadData();

		$(document).on("click",".likephoto",function(e) {

			console.log($(this));

			var likeparams=$(this).attr("data-pos");

			clicklike(likeparams,$(this).next(),$(this))

			$(this).addClass('disabled');

			});

	$(document).on("click",".move",function(e) {

		var lookparams=$(this).attr("data-pos");

		clicklook(lookparams)

		$("#glayLayer").show()
		$("#overLayer").show().html("<img src='"+$(this).attr("src")+"' /><div id='modalright'></div>")

	});
});