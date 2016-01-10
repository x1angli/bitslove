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
                var receivers = data.receivers;
                var project_id = data.id;
                for( var i = 0; i < receivers.length; i++){
                    var id = receivers[i];
                    $('#receivers-area').append(
                        '<form id="receiver_form'+ id +'" action="/" method="put">' +
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
                        '<input type="button" class="receiver_cls" value="Submit" data-id=' + id + ' id="receiver_sub">' +
                        '</form>'
                        );
                }
                $(".receiver_cls").click(function(){
                    var id = this.getAttribute('data-id');
                    var form = new FormData(document.getElementById("receiver_form" + id));
                    $.ajax({
                        type: 'PUT',
                        url: '/projects/' + project_id + '/receivers/' + id,
                        data: form,
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: function (data, status) {
                            alert("success");
                        }
                    });
                });
            }
        });
    });
});