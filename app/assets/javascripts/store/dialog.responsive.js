
(function($){

// run function on all dialog opens
$(document).on("dialogopen", ".ui-dialog", function (event, ui) {
    fluidDialog();
});

// remove window resize namespace
$(document).on("dialogclose", ".ui-dialog", function (event, ui) {
    $(window).off("resize.responsive");
});

function fluidDialog() {
    var $visible = $(".ui-dialog:visible");
    // each open dialog
    $visible.each(function () {
        var $this = $(this);
        var dialog = $this.find(".ui-dialog-content").data("dialog");
        // if fluid option == true
        if (dialog.options.maxWidth && dialog.options.width) {
            // fix maxWidth bug
            $this.css("max-width", dialog.options.maxWidth);
            //reposition dialog
            dialog.option("position", dialog.options.position);
        }

        if (dialog.options.fluid) {
            // namespace window resize
            $(window).on("resize.responsive", function () {
                var wWidth = $(window).width();
                // check window width against dialog width
                if (wWidth < dialog.options.maxWidth + 50) {
                    // keep dialog from filling entire screen
                    $this.css("width", "90%");

                }
              //reposition dialog
              dialog.option("position", dialog.options.position);
            });
        }

    });
}

})(jQuery);