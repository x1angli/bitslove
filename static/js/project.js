/**
 * Created by harley on 1/10/16.
 */

$(function(){
    $("#projects_sub").click(function(){
        var form = new FormData(document.getElementById("projects_form"));
        $.ajax({
            type: 'POST',
            url: '/projects',
            data: form,
            cache: false,
            contentType: false,
            processData: false,
            success: function (data, status) {
                receivers = data.receivers;
                for( var i = 0; i < receivers.length; i++){
                    id = receivers[i];
                    $('#receivers-area').append(
                        '<form action="/" method="put">' +
                        'name:<br>' +
                        '<input type="text" name="name"><br>' +
                        'address:<br>' +
                        '<input type="text" name="address"><br>' +
                        'gender:<br>' +
                        '<input type="text" name="gender"><br>' +
                        'age:<br>' +
                        '<input type="text" name="age"><br>' +
                        'description:<br>' +
                        '<input type="text" name="description"><br>' +
                        'target:<br>' +
                        '<input type="text" name="target"><br>' +
                        '<input type="button" value="Submit" id="projects_sub"' + id + '>' +
                        '</form>'
                        );
                }
            }
        });

    });
});