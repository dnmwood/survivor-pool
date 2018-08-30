console.log("hello")

// document.addEventListener('DOMContentLoaded', function() {
//   console.log("loaded")
//   var snd = new Audio("/assets/survivor.mp3");
//     snd.play();
// }, false);

  $(function() {
    $("#table-1").click(function() {
      $("#table-1").toggleClass("menuOpen")
    });
  });
