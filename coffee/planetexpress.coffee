jQuery(document).ready ->
    paper = new Raphael("planet_express", 900, 750)
    paths =
        [
            name: "big circle"
            path: "m 853.36309,366.73361 c 0,195.36164 -171.02518,353.73353 -381.99547,353.73353 -210.97029,0 -381.995525,-158.37189 -381.995525,-353.73353 0,-195.36159 171.025235,-353.733472 381.995525,-353.733472 210.97029,0 381.99547,158.371882 381.99547,353.733472 z"
            attr:
                fill: "#faffbd"
                stroke: "black"
                "stroke-width": 26
            hover_in: ->
            hover_out: ->
        ,
            name: "small circle"
            path: "m 673.62131,366.74045 c 0,105.54292 -90.56709,191.10236 -202.28729,191.10236 -111.72018,0 -202.2873,-85.55944 -202.2873,-191.10236 0,-105.54293 90.56712,-191.10237 202.2873,-191.10237 111.7202,0 202.28729,85.55944 202.28729,191.10237 z"
            attr:
                fill: "#a80d1d"
                stroke: "black"
                "stroke-width": 16
            hover_in: ->
            hover_out: ->
        ,
            name: "title"
            path: "m 422.28639,680.00223 -12.11925,-29.88351 c -7.95899,7.43411 -22.6337,21.90162 -22.6337,21.90162 -8.96799,-3.25375 -27.69668,-9.56992 -27.69668,-9.56992 l 38.04262,-33.56096 -12.51738,-42.28829 26.01738,8.31595 7.18899,19.4438 14.52225,-14.03025 27.21124,5.01059 -30.42248,32.77231 17.25,44.16121 z m 81.71091,-2.36477 -11.34116,-77.14762 c 0,0 10.02676,-2.67043 19.85454,-4.65825 20.29659,-4.10529 27.42296,-4.19056 36.12598,-0.43223 10.06305,4.34564 13.74555,11.18577 13.73793,25.51776 -0.006,12.18724 -1.87695,15.85051 -10.24684,20.0682 -3.34882,1.6875 -9.69302,3.89139 -14.09823,4.89751 -4.40521,1.00612 -11.47755,2.52068 -11.47755,2.52068 1.2583,9.16062 3.37682,25.64647 3.37682,25.64647 z m 31.2258,-50.33109 c 5.37327,-2.44823 5.54081,-10.95313 0.28363,-14.39777 -2.07139,-1.35722 -3.14924,-1.43008 -6.79464,-0.45927 -3.58713,0.95529 -8.30396,2.00956 -8.30396,2.00956 0,0 0.70182,4.38261 1.06558,6.89352 0.61237,4.22692 1.57503,8.67647 1.57503,8.67647 0,0 8.4639,-1.08862 12.17436,-2.72251 z m -262.03115,-12.45152 47.59415,-62.43773 43.09159,27.63999 -10.58753,15.33975 -21.21758,-12.91336 -7.59073,10.61631 15.08793,9.8885 -9.20323,12.96231 -15.90382,-10.53254 -7.18323,10.53144 18.59988,13.12693 -10.07094,14.05662 z m 342.61224,10.89127 c -20.6916,-27.76297 -33.65914,-48.29678 -33.65914,-48.29678 0,0 11.54881,-10.58957 26.90259,-20.98503 8.70144,-5.89141 12.83322,-8.07483 16.25,-8.5872 9.28357,-1.39216 17.61282,1.41439 24.89471,8.3883 7.63246,7.30965 9.54346,13.44492 7.83419,25.15171 -0.68607,4.69889 -0.63013,6.81331 0.2019,7.63069 0.63302,0.62188 5.65094,2.59662 11.15094,4.38832 6.10501,1.90806 11.97966,4.25154 17.67717,7.11202 -6.82203,5.37114 -21.21517,15.10641 -21.21517,15.10641 0,0 -4.74875,-1.11919 -9.59637,-3.55381 -11.03131,-5.54026 -16.58569,-7.17141 -19.36145,-5.68587 -1.1023,0.58994 -2.00418,1.66832 -2.00418,2.39642 0,0.7281 2.93233,5.30277 6.51629,10.16594 3.58396,4.86317 6.17731,9.85907 6.17731,9.85907 l -18.76879,13.5463 c 0,0 -6.16635,-7.46744 -13,-16.63649 z m 10.81896,-36.25835 c 7.88086,-5.70887 9.0339,-9.67863 4.3126,-14.84779 -3.89371,-4.26306 -6.508,-4.09848 -13.41046,0.84427 l -5.67968,4.06712 9.95654,12.86575 c 0,0 2.59688,-1.31821 4.821,-2.92935 z m 32.25623,-71.84385 29.85749,-39.30307 15.00656,10.66268 -13.15048,18.06183 11.44863,8.10151 12.78133,-17.50318 13.67992,9.5574 -12.39911,18.03462 9.8641,6.70482 13.23705,-18.81863 16.02108,10.73597 -30.63648,43.0703 c 0,0 -44.91325,-32.43212 -65.71009,-49.30425 z m 113.91008,-34.98339 c -1.42445,-0.95888 -4.99297,-3.86013 -7.93003,-6.44723 l -5.34012,-4.70382 4.46033,-4.79618 c 10.55688,-11.35177 12.09988,-15.63014 7.44749,-20.65016 -4.63722,-5.00363 -8.18133,-3.58064 -14.53577,5.83622 -7.67986,11.38106 -13.70822,15.51776 -22.61384,15.51776 -7.09363,0 -12.11049,-1.93586 -17.44395,-6.7311 -7.98197,-7.17647 -10.89353,-18.50709 -7.58261,-29.50845 1.71526,-5.69938 10.05461,-19.83652 13.84153,-23.46462 2.63571,-2.52518 3.01693,-2.61738 5.20996,-1.26018 1.30138,0.80539 4.44107,3.38841 6.97707,5.74004 l 4.61092,4.2757 -3.4376,3.01825 c -6.47459,5.68477 -9.70891,16.65205 -6.00353,20.35743 2.22946,2.22946 6.18171,3.00712 8.92665,1.75644 1.292,-0.58867 4.24667,-4.35828 6.56593,-8.37691 5.40103,-9.35847 6.58662,-10.69834 11.43749,-12.92587 6.53578,-3.00124 15.86626,-2.53749 23.25749,1.15595 8.92312,4.45894 13.93095,9.70288 14.79994,15.49775 2.02911,13.53106 -5.00405,33.47734 -15.59064,44.21557 -3.72789,3.78129 -3.67469,3.77003 -7.05671,1.49341 z M 737.33258,379.09104 c -13.27648,-5.11539 -20.32474,-17.47601 -19.17312,-33.62416 0.74925,-10.50598 5.28955,-22.04976 5.28955,-22.04976 l 15.72461,5.99323 c 0,0 -0.19312,3.70295 -1.39989,7.37903 -1.88759,5.75 -2.03096,7.22841 -1.02618,10.58207 1.19037,3.97309 6.09939,9.04567 8.75401,9.04567 3.35678,0 6.12209,-4.5505 7.34497,-12.08664 1.87572,-11.55934 3.20146,-15.08197 7.16938,-19.04989 6.06951,-6.06951 16.48944,-7.19452 29.24959,-3.15798 10.08344,3.18978 15.99524,11.91205 17.56578,25.91655 1.28541,11.46203 -5.92559,33.70916 -5.92559,33.70916 -7.24875,-0.19637 -12.65781,-1.71734 -19.95711,-6.38398 0,0 2.07195,-6.93823 3.4667,-11.02207 3.19262,-9.34804 2.98683,-14.46469 -0.69181,-17.20018 -3.59348,-2.67217 -7.71975,-2.54127 -9.87289,0.31321 -0.94929,1.2585 -2.26126,4.80225 -2.9155,7.875 -3.14848,14.78747 -5.69631,19.07939 -13.47684,22.70234 -5.65553,2.63346 -14.79086,3.11389 -20.12566,1.0584 z m -601.64932,1.25283 c 0,0 2.04766,-32.89451 5.22113,-48.60778 1.45372,-6.77844 5.88293,-13.56844 11.102,-17.01941 3.9671,-2.62313 4.9,-2.79937 14.80346,-2.79647 12.27546,0.004 19.1994,1.91604 24.82758,6.85759 5.67751,4.98485 7.07952,9.41427 7.85202,24.80707 l 0.67931,13.53584 21.84438,2.11163 -2.20941,27.68359 z m 43.19612,-29.97641 c 0.58786,-12.15624 -12.28451,-16.13956 -17.10474,-5.52654 -1.01824,2.24191 -1.8733,8.5565 -1.8733,8.5565 l 18.74897,1.7069 z m -27,-87.32569 13.07593,-24.81499 50.2738,24.534 15.62449,-27.35593 22.99029,11.57974 -25.28939,50.08444 z m 72,-111.32575 23.19557,-22.1742 79.80443,39.0696 -19.33155,20.07663 -11.46538,-6.41932 -18.70225,19.16038 6.22467,10.80426 -17.6206,19.18375 z m 53.31856,18.62054 -19.48968,-8.53186 8.93956,19.06231 z m 290.47538,-18.7255 27.89687,-50.15822 -17.1052,-9.187947 11.6431,-20.847769 53.12245,29.353276 -12.30572,20.79604 -16.70628,-9.20714 -27.54215,49.56476 z m -238.05269,-72.144168 22.83402,-9.450555 44.99621,33.162643 -12.34168,-41.301882 26.90589,-7.233286 21.51543,77.410548 -24.6692,8.36276 c 0,0 -26.7124,-17.40966 -41.8781,-28.81074 l 12.41328,36.91125 c -6.63329,3.94256 -20.63377,8.83445 -20.63377,8.83445 -8.65296,-23.77526 -29.14208,-77.885188 -29.14208,-77.885188 z m 145.14916,53.240638 7.31485,-81.50142 48.66478,6.607202 -2.83603,17.735333 -23.36894,-3.131198 -1.62912,13.584839 21.18378,2.639257 -2.35006,18.199507 -21.01843,-2.56592 -2.13812,15.11609 23.51093,2.84995 -2.30364,14.77185 z"
            attr:
                fill: "black"
                stroke: "black"
            hover_in: ->
            hover_out: ->
        ,
            name: "ship"
            path: "m 550.99708,382.19611 c 33.82106,-17.02321 63.03691,-34.73651 96.32454,-52.49174 75.13687,-41.08362 121.70193,-77.58519 174.21014,-142.68424 14.78233,-21.86961 26.94972,-40.43039 28.28986,-64.82401 -21.44652,-4.14687 -47.61099,-5.5264 -69,-2.6663 -60.21638,8.92343 -132.77494,40.04582 -211,90.50377 -38.71383,25.50931 -69.27618,49.07005 -101.22364,77.5377 -53.80666,-0.34483 -147.36869,17.2679 -178.86793,49.24747 55.06453,-1.31568 85.59158,30.89701 85.59158,30.89701 0,0 -22.93394,30.56821 -31,49.96189 5.51168,5.81032 27.95187,33.4745 27.95187,33.4745 18.47757,-5.57478 55.3967,-16.8174 55.3967,-16.8174 15.46984,43.91876 16.40836,45.7486 -2.34728,102.69291 56.64376,-35.65932 105.54561,-98.69094 125.67416,-154.83156 z"
            attr:
                fill: "#7ff7ee"
                stroke: "black"
                "stroke-width": 4
            hover_in: ->
            hover_out: ->
        ,
            name: "exhaust"
            path: "m 222.32494,505.63395 c -40.31005,23.33599 -72.05855,41.44817 -117.70676,66.49529 40.68414,-29.53101 70.00014,-45.86362 114.75013,-76.56271 25.19826,-16.98779 55.44672,-35.93324 73.29355,-47.10779 31.03544,-19.41787 33.4867,-24.54558 40.86741,-24.29125 5.15375,0.17759 7.81711,7.03694 6.9274,11.57707 -1.1639,5.93927 -16.60848,12.90494 -38.78535,25.40887 -28.70488,16.30701 -50.12992,27.92054 -79.34638,44.48052 z M 98.154114,528.73233 C 57.74017,552.67109 23.09963,573.1593 21.17514,574.26169 c -10.88587,6.23563 6.1723,-5.24602 73.620824,-49.55326 50.763546,-33.44871 117.644936,-78.84205 154.841296,-103.24389 38.08849,-24.99604 77.92169,-51.63086 83.4326,-51.632 6.33064,-10e-4 10.56217,7.30371 8.08867,12.54225 -2.3142,4.90115 -53.52327,32.87493 -78.35769,47.15571 -58.80662,35.6797 -109.4114,66.49027 -164.646726,99.20183 z m 61.457746,72.87715 C 104.94796,633.5362 62.20882,659.81911 4.5672998,693.24242 51.53763,659.45933 90.64283,636.55647 155.61862,592.85001 c 26.79818,-17.60501 55.20716,-35.72748 76.88794,-49.93002 38.10003,-24.97844 49.5193,-32.00935 51.98802,-32.00935 6.33064,0 10.67742,8.40478 6.32271,12.22539 -0.9625,0.84445 -24.025,14.69549 -51.24999,30.78009 -26.68574,15.84111 -53.29073,31.81684 -79.95544,47.69336 z"
            attr:
                fill: "black"
                stroke: "black"
            hover_in: ->
            hover_out: ->
        ]

    for path in paths
        do (path) ->
            paper.path(path.path).attr(path.attr).hover(path.hover_in,
            path.hover_out)

class Drawing
    draw: ->
        console.log("draw Drawing")
