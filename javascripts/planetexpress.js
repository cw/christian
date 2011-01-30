jQuery(document).ready(function () {
    var paper = new Raphael("planet_express", 465, 565),
    background_path = "",
    attr = {
        fill: "none",
        stroke: "black"
    },
    background = paper.path(background_path).attr(attr).hover(
        function(evt) {
            this.animate({"stroke-width": 10, stroke: "green"}, 1500);
        },
        function (evt) {
            this.animate({"stroke-width": 1, stroke: "black"}, 1500);
        }
    ),
    //box = background.getBBox();
    //face.translate(-box.x, -box.y);
 });

