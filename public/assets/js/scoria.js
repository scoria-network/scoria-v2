var scoria = {};

scoria.create_post = function (post_text) {
    var trimmed_post_text = post_text.trim();
    
    if (trimmed_post_text) {
	console.log(post_text);
    }
};

$(document).ready(function () {
    $('#post-input-button').on('click', function () {
	var post_text = $('#post-input-text').val();
	scoria.create_post(post_text);
    });
});
