$(document).ready(function () {
    $('#summernote').summernote({ height: 250 });
    $('#exam').summernote({ height: 250 });

    $('.datepicker').datepicker({
        dateFormat: "dd-mm-yy"
    });
});