$(function() {
    $(".alert").alert();
    $(".dropdown-toggle").dropdown();
    $(".carousel").carousel({ interval: 5000 });
    activate_current_nav_link();
});

function activate_current_nav_link() {
    $(".navbar a[href='" + window.location.pathname + "']").parent().addClass("active");
}
