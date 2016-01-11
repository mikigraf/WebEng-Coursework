$(function () {
    function populate(msgs) {
        var messages = $("#messages");
        //clear the shoutbox for a split second
        messages.html(" ");
        //populate the cleared shoutbox
        for (var i = 0; i < msgs.length; i++) {
            messages.append("<div> " + result[i].date + " " + result[i].name + ": " + result[i].message + "</div>");
        }
    }

    function getMessages() {
        $.get("ressources/shoutbox", function (result) {
            populate(result);
        });
    }

    getMessages();

    setInterval(function () {
        getMessages();
    }, 5000);

    $("#shout-submit").submit(function (e) {
        e.preventDefault();

        var name = $("#name").val();
        var msg = $("#message").val();

        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: "ressources/shoutbox",
            dataType: "json",
            data: JSON.stringify({"name": name, "message": msg}),
            success: function (result) {
                $("#messages").append("<div> " + result[i].date + " " + result[i].name + ": " + result[i].message + "</div>");
                $("#message").val("").keypress();
            }
        });
    })
});