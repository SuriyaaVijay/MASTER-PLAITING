     //flight toggle
     $(".toggleDiv").click(function() {
         $('.hiddenDiv').toggle();
     });
     $(".moreTraveller").click(function() {
         $('.hiddenDiv1').toggle();
     });

     //hotel toggle
     $(".hotel-toggle").click(function() {
         $('.hiddenDiv-one').toggle();
     });
     $(".moreTraveller").click(function() {
         $('.hiddenDiv1').toggle();
     });

     //train toggle
     $("button").click(function() {
         $('.hiddenDiv').toggle();
     });
     $(".moreTraveller").click(function() {
         $('.hiddenDiv1').toggle();
     });
     $(".toggleDiv").click(function() {
         $('.hiddenDiv2').toggle();
     });

     //Progress Bar Loader
     var loadCount = 40;
     setInterval(function() {
         loadCount = loadCount + 10;
         $('.progress-bar').css('width', loadCount + '%');
         if (loadCount > 100) {
             $('.loader').show();
             $('.progressBar').hide();
             return false;
         }
     }, 500);

     //flights Toggle
     $(".flight-one").click(function() {
         $('.hiddenDiv-flight').toggle();
     });
     $(".toggleDivTwo").click(function() {
         $('.hiddenDivTwo').toggle();
     });

     //Tab 

     $(document).ready(function() {
         $("#redbox1").attr('checked', 'checked');
         $("#redbox1").css("display", "block");
         $('input[type="radio"]').click(function() {
             var inputValue = $(this).attr("value");
             var targetBox = $("." + inputValue);
             $(".box").hide();
             $(targetBox).show();
         });
     });

     //Activity Toggle
$(document).ready(function(){
      $(".activityBox").click(function(){
        $(".activityHide").toggle();
      });
    });