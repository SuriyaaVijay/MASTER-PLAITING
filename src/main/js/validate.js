//Flight First Tab

$(document).ready(function(){
$.validator.addMethod(
        "checkPluginSelectbox", 
        function(value, element) {  
            if( value!="-1" )
                return true;
            else 
                return false;                         
        },
        "Please Select Worldwide City or Airport"
    );
    $("form#myForm").validate({
    rules: {
        country: {
            checkPluginSelectbox: true,
            },
        country1: {
            checkPluginSelectbox: true,             
        },                 
        adultDiv: {
            required: true,
        },
        childDiv: {
            required: true,
        },
        infantDiv: {
            required: true,
        },
        economyDiv: {
            required: true,
        },
        fname: {
            required: true,
        },
    },
    messages: {
        adultDiv: {
            required: "Select Adult",
        },
        childDiv: {
            required: "Select Child",
        },
        infantDiv: {
            required: "Select Infant",
        },
        economyDiv: {
            required: "Select Flight Class",
        },
         fname: {
            required: "Please Enter Preferred Airline",
        },
    },
    submitHandler: function(form) {
        window.location = "flight-details.html";
    }
  });
});

//Flight Second Tab

$(document).ready(function(){
$.validator.addMethod(
        "checkPluginSelectbox1", 
        function(value, element) {  
            if( value!="-1" )
                return true;
            else 
                return false;                         
        },
        "Please Select Worldwide City or Airport"
    );
    $("form#secondForm").validate({
    rules: {
        country2: {
            checkPluginSelectbox1: true,
            },
        country3: {
            checkPluginSelectbox1: true,            
        },                 
        adultOneDiv: {
            required: true,
        },
        childOneDiv: {
            required: true,
        },
        infantOneDiv: {
            required: true,
        },
        travelClass: {
            required: true,
        },
        airName: {
            required: true,
        },
    },
    messages: {
        adultOneDiv: {
            required: "Select Adult",
        },
        childOneDiv: {
            required: "Select Child",
        },
        infantOneDiv: {
            required: "Select Infant",
        },
        travelClass: {
            required: "Select Flight Class",
        },
         airName: {
            required: "Please Enter Preferred Airline",
        },
    },
    submitHandler: function(form) {
        window.location = "flight-details.html";
    }
  });
});

//Flight Third Tab

$(document).ready(function(){
$.validator.addMethod(
        "checkPluginSelectbox3", 
        function(value, element) {  
            if( value!="-1" )
                return true;
            else 
                return false;                         
        },
        "Please Select Airport"
    );
    $("form#thirdForm").validate({
    rules: {
        country4: {
            checkPluginSelectbox3: true,
            },
        country5: {
            checkPluginSelectbox3: true,            
        }, 
        country6: {
            checkPluginSelectbox3: true,
            },
        country7: {
            checkPluginSelectbox3: true,            
        },       
        country8: {
            checkPluginSelectbox3: true,
            },
        country9: {
            checkPluginSelectbox3: true,            
        },                       
        selectAdult: {
            required: true,
        },
        selectChild: {
            required: true,
        },
        selectInfant: {
            required: true,
        },
        selectClass: {
            required: true,
        },
    },
    messages: {
        selectAdult: {
            required: "Select Adults",
        },
        selectChild: {
            required: "Select Child",
        },
        selectInfant: {
            required: "Select Infant",
        },
        selectClass: {
            required: "Select Class",
        },
    },
    submitHandler: function(form) {
        window.location = "flight-details.html";
    }
  });
});


//Hotel Form Validation

$(document).ready(function(){
    $("form#hotelForm").validate({
    rules: {
        selectCity: {
            required: true,
            },      
        travelRoom: {
            required: true,
        },
    },
    messages: {
        selectCity: {
            required: "Enter Locality, Landmark, City or Hotel",
        },
        travelRoom: {
            required: "Select Room and Adults",
        },
    },
    submitHandler: function(form) {
        window.location = "hotel-details.html";
    }
  });
});

//Train Form Validation

$(document).ready(function(){
    $("form#trainForm").validate({
    rules: {
        selectStation: {
            required: true,
            },      
        selectStation1: {
            required: true,
        },
         trainClass: {
            required: true,
        },
         trainAdults: {
            required: true,
        },
         trainChild: {
            required: true,
        },
        trainSenior: {
            required: true,
        },
        trainWomen: {
            required: true,
        },
    },
    messages: {
        selectStation: {
            required: "Enter a City or Station",
        },
        selectStation1: {
            required: "Enter a City or Station",
        },
         trainClass: {
            required: "Please Select Class",
        },
        trainAdults: {
            required: "Select Adults",
        },
         trainChild: {
            required: "Select Child",
        },
        trainSenior: {
            required: "Select Senior Men",
        },
         trainWomen: {
            required: "Select Women",
        },
    },
    submitHandler: function(form) {
        window.location = "train-details.html";
    }
  });
});


