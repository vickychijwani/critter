$(function() {
    if ($("input.indexing_status[type=hidden]").val() === "not_started")
        index_tweets();
});

function index_tweets() {
    $.notify_osd.create({
        'text'   : 'Critter is indexing your tweets now ...',
        'icon'   : '/images/gears.png',
        'sticky' : true,
        'click_through' : false
    });
    $.ajax({
        url : '/ajax/index_tweets',
        type : 'GET',
        success : function(response) {
            console.log(response);
            done = true;
            if (response.status == "just_finished") {
                $.notify_osd.create({
                    'text'        : 'Indexing done.',
                    'icon'        : '/images/gears.png',
                    'timeout'     : 6,
                    'dismissable' : true,
                    'click_through' : false
                });
            }
            else {
                $.notify_osd.dismiss();
            }
        },
        dataType: 'json'
    });
}