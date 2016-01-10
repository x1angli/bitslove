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
                var url = data.img_url;
                $("#emptytip").hide();
                $("#localimgList").prepend('<li data-id="' + data.img_id + '"><div class="imgdiv"><img id="' + data.img_id + '" src="' + data.img_url + '"/><p>' +
                    '<label for="checkbox"><span class="imgName">' + data.img_name + '</span></label></p></div>' +
                    '<div class="imgOperation"><span data-id="' + data.img_id + '" class="glyphicon glyphicon-trash" title="真滴删除么？"  data-toggle="popover" data-placement="bottom" ></span>' +
                    '</div></li>');
                $("[data-toggle='popover']").popover();
                $("#upload").val("");
            }
        });

    });
});