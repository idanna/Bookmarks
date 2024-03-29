// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//=require jquery
//= require jquery_ujs
//= require_tree .

$(function() {

	$("input#user_bookmark_link").keyup(function() {
			var video_id, pattern,current_link;
			pattern = /((http|https)::\/\/)?www.youtube.com\/watch\?/;
			current_link = $(this).val();
			// basic check for youtube format url
			if (pattern.test(current_link))
			{
				// extract the id of the movie
				video_id = parse_movie_id(current_link);
				$('#video_id').val(video_id);
		  	$('form#youtube_check').submit();		
			}		
	});

});

function parse_movie_id(youtube_url)
{
	var id = youtube_url.split('v=')[1];
	if(id && id.indexOf('&') != -1) 
	{
		id = id.substring(0, id.indexOf('&'));
	}
	
	return id;
}
