/**
 * 
 * @returns {undefined}
 * Shoutbox code using REST Service on the server.
 * Shorthand for document.ready()
 */
$(function() {
    function populateShoutbox(result) {
        var messages = $("#messages");
        messages.html("");
        for(var i = 0; i < result.length; i++){
            messages.append("<div class=\"shout\" style=\" padding:1%;\"><p><h6>" + result[i].name + " (" + result[i].date + "):</h6>" + result[i].message + "</p></div>");
        }
    }
    
    function getMessages() {
        $.get(
            "ressources/shoutbox",
            function(result){
                populateShoutbox(result);
            }
        );
    }
    
    $("#shout-form").submit(function(e) {
        e.preventDefault();
        var name = $("#name").val();
        var msg = $("#message").val();
        $.ajax({
            type: "PUT",
            contentType: "application/json",
            url: "ressources/shoutbox",
            dataType: "json",
            data: JSON.stringify({"name": name, "message": msg}),
            success: function (result) {
                $("#messages").append("<div class=\"shout\" style=\"display: none; padding: 1%;\"><p><h6><strong>" + result.name + " (" + result.date + "):</strong></h6>" + result.message + "</p></div>");
                $("#messages > .shout").last().fadeIn();
                $("#message").val("").keypress();
            }
        });
    });

    getMessages();

    setInterval(function() {
        getMessages();
    }, 2000);

});