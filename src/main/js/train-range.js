 /* range js*/
 var slider = document.getElementById("myRange");
 var output = document.getElementById("tripDur");
 output.innerHTML = slider.value;

 slider.oninput = function() {
     "use strict";
     output.innerHTML = this.value;
 }

 var slider1 = document.getElementById("myRange1");
 var output1 = document.getElementById("layOver");
 output1.innerHTML = slider1.value;

 slider1.oninput = function() {
     output1.innerHTML = this.value;
 }