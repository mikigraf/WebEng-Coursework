$(document).ready(function () {
    $(".button-collapse").sideNav();
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();
});

$('.collapsible').collapsible({
    accordion: false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
});

$('#textarea1').val('New Text');
$('#textarea1').trigger('autoresize');

$('.fixed-action-btn').openFAB();
$(".btn-floating btn-large red").click(function () {
     $("#container").append($(".address").html());
});
