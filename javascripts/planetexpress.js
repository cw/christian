(function() {
  var Drawing;
  jQuery(document).ready(function() {
    var attr, background, background_path, paper;
    paper = new Raphael("planet_express", 900, 750);
    background_path = "m 853.36309,366.73361 c 0,195.36164 -171.02518,353.73353 -381.99547,353.73353 -210.97029,0 -381.995525,-158.37189 -381.995525,-353.73353 0,-195.36159 171.025235,-353.733472 381.995525,-353.733472 210.97029,0 381.99547,158.371882 381.99547,353.733472 z";
    attr = {
      fill: "black",
      stroke: "black"
    };
    return background = paper.path(background_path).attr(attr).hover(function() {
      console.log("hover on");
      return this.animate({
        "stroke-width": 10,
        stroke: "green"
      }, 1500);
    }, function() {
      console.log("hover off");
      return this.animate({
        "stroke-width": 1,
        stroke: "black"
      }, 1500);
    });
  });
  Drawing = (function() {
    function Drawing() {}
    Drawing.prototype.draw = function() {
      return console.log("draw Drawing");
    };
    return Drawing;
  })();
}).call(this);
