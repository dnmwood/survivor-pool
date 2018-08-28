console.log("hello")

document.addEventListener('DOMContentLoaded', function() {
  console.log("loaded")
  var snd = new Audio("/assets/survivor.mp3");
    snd.play();
}, false);
