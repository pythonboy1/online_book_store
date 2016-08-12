/**
 * Created by Shabs on 8/5/2016.
 */

$(document).ready(function () {
    $("#success-alert").hide();
    $("#butclick").click(function showAlert() {
        $("#success-alert").alert();
        $("#success-alert").fadeTo(2000,500).slideUp(500,function () {
            $("#success-alert").slideUp(500);
        });
    });
});
$(document).ready(function () {
        $("#succ").fadeTo(2000,500).slideUp(500,function () {
            $("#succ").slideUp(500);
            $("#succ").hide();
    });
});

$(document).ready(function () {
    $("#onwar").click(function () {
        $("#loginwar").hide();
    });
});
/*$("#success-alert").delay(4000).slideUp(200,function () {
    $(this).alert('close');
});*/
;
