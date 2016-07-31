$(document).on('ready', function() {
  var target = $(".progress-bar");
  if($('.aria-valuenow') < 25){
     target.addClass("progress-bar-danger");
  }
  else if ($('.aria-valuenow') < 50) {
    target.addClass("progress-bar-warning");
  }
  else if ($('.aria-valuenow') > 80) {
    target.addClass("progress-bar-success");
  };
});
