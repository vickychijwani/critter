$(function() {
    bind_view_sample_handler();
});

function bind_view_sample_handler() {
    $(".view-sample").click(function() {
        inputs = $(".download form input, .download form select");
        window.location.href = "/download?query=" + inputs.filter("[name=query]").val().replace("#", "%23").replace("@", "%40") + "&type=" + inputs.filter("[name=type]").val();
    });
}
