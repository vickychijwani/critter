$(function() {
    bind_view_sample_handler();
});

function bind_view_sample_handler() {
    $(".view-sample").click(function() {
        inputs = $(".download form input, .download form select");
        window.location.href = "/download?query=" + inputs.filter("[name=query]").val() + "&type=" + inputs.filter("[name=type]").val();
    });
}
