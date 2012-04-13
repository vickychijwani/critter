$(function() {
    render_tag_cloud('hashtag');
    render_tag_cloud('mention');
});

function render_tag_cloud(type) {
    var limit = 20;
    var tc = TagCloud.create();
    var prefix = (type === 'mention') ? '@' : '#';
    var prefix_entity = (type === 'mention') ? '%40' : '%23';
    $.ajax({
        'url' : '/ajax/tag_cloud',
        'data' : {
            'type'  : type,
            'limit' : limit
        },
        'type' : 'GET',
        'success' : function(response) {
            for (var i = 0; i < response.length; i++) {
                hashtag = response[i].text;
                count = response[i].count;
                tc.add(prefix + hashtag, count, '/search?query=' + prefix_entity + hashtag + "&type=substring", null);
            }
            tc.loadEffector('CountSize').base(24).range(10);
            tc.setup(type + '-cloud-inner');
        },
        'dataType' : 'json'
    });
}