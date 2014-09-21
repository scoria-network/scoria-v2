var makeAPIRequest = function makeAPIRequestF (action, params) {
    var response;
    $.ajax({
	async: false,
	data: params,
	url: '/api/'+action,
	type: 'GET',
	dataType: 'json'
    }).then(function (data) {
	response = data;
    });
    return response;
};

var create_post = function () {
    var form = $('#post-input');
    var post_text = $('#post-input-text').val();
    
    makeAPIRequest('create_post', "key=" + post_text);
};
