jQuery(document).ready ->
    paper = new Raphael("planet_express", 900, 750)
    background_path = "m 853.36309,366.73361 c 0,195.36164 -171.02518,353.73353 -381.99547,353.73353 -210.97029,0 -381.995525,-158.37189 -381.995525,-353.73353 0,-195.36159 171.025235,-353.733472 381.995525,-353.733472 210.97029,0 381.99547,158.371882 381.99547,353.733472 z"
    attr =
        fill: "black"
        stroke: "black"
    background = paper.path(background_path).attr(attr).hover(
        ->
            console.log("hover on")
            this.animate({"stroke-width": 10, stroke: "green"}, 1500)
        ->
            console.log("hover off")
            this.animate({"stroke-width": 1, stroke: "black"}, 1500)
    )

class Drawing
    draw: ->
        console.log("draw Drawing")
