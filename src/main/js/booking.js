//Flight Booking Tab

$(document).ready(function(){
    $("form#flightForm").validate({
    rules: {         
        secure: {
            required: true,
        },
        secureDiv: {
            required: true, 
        },
        cardNum: {
            required: true,
        },
    },
    messages: {
        secure: {
            required: "Select Box",
        },
        secureDiv: {
            required: "Select Box",
        },
        cardNum: {
            required: "Enter Code", 
        },        
    },
    submitHandler: function(form) {
        $('#itinearyOne').hide();
        $('#emailSection').show();
    }
  });
});

//Flight Booking Email Tab

$(document).ready(function(){
    $("form#emailForm").validate({
    rules: {         
        emailId: {
            required: true,
        },
        emailCheck: {
            required: true,
        },
        emailCheck1: {
            required: true,
        },
    },
    messages: {
        emailId: {
            required: "Enter Email Address",
        },
        emailCheck: {
            required: "Select Box",
        },
        emailCheck1: {
            required: "Select Box",
        },        
    },
    submitHandler: function(form) {
        $('#emailSection').hide();
        $('#travellerId').show();
    }
  });
});

//Flight Booking Email Tab

$(document).ready(function(){
    $("form#travelForm").validate({
    rules: {         
        titleDiv: {
            required: true,
        },
        name1: {
            required: true,
        },
        lastName: {
            required: true,
        },
        mobileNum: {
            required: true,
        },
         travelCheck: {
            required: true,
        },
    },
    messages: {
        titleDiv: {
            required: "Select Title",
        },
        name1: {
            required: "Enter First Name",
        },
        lastName: {
            required: "Enter Last Name",
        }, 
        mobileNum: {
            required: "Enter Mobile Number",
        }, 
        travelCheck: {
            required: "Select Box",
        },        
    },
    submitHandler: function(form) {
       $('#travellerId').hide();
        $('#paymentSection').show();
    }
  });
});


//Flight Booking Payment Tab
//Credit card Validation

$(document).ready(function(){
    $("form#creditForm").validate({
    rules: {         
        creditNumber: {
            required: true,
        },
        creditMonth: {
            required: true,
        },
        creditHolder: {
            required: true,
        },
        cvvCredit: {
            required: true,
        },
        checkCredit: {
            required: true,
        },
    },
    messages: {
        creditNumber: {
            required: "Enter 16 Digit Credit Card Number",
        },
        creditMonth: {
            required: "Enter Expiry Month & Year",
        },
        creditHolder: {
            required: "Enter CardHolder Name",
        }, 
        cvvCredit: {
            required: "Enter CVV Number",
        }, 
        checkCredit: {
            required: "Select Box",
        },        
    },
    submitHandler: function(form) {
      window.location = "confirmation.html";
    }
  });
});

$(document).ready(function(){
    $('#creditNumber').mask('0000 0000 0000 0000');
});

//Debit card Validation

$(document).ready(function(){
    $("form#debitForm").validate({
    rules: {         
        debitNumber: {
            required: true,
        },
        debitMonth: {
            required: true,
        },
        debitHolder: {
            required: true,
        },
        cvvDebit: {
            required: true,
        },
        checkDebit: {
            required: true,
        },
    },
    messages: {
        debitNumber: {
            required: "Enter 16 Digit Credit Card Number",
        },
        debitMonth: {
            required: "Enter Expiry Month & Year",
        },
        debitHolder: {
            required: "Enter CardHolder Name",
        }, 
        cvvDebit: {
            required: "Enter CVV Number",
        }, 
        checkDebit: {
            required: "Select Box",
        },        
    },
    submitHandler: function(form) {
      window.location = "confirmation.html";
    }
  });
});

$(document).ready(function(){
   $('#debitNumber').mask('0000 0000 0000 0000');
});
//NetBanking card Validation

$(document).ready(function(){
    $("form#netForm").validate({
    rules: {         
        netBank: {
            required: true,
        },
        netCheck: {
            required: true,
        },
    },
    messages: {
        netBank: {
            required: "Please Select Bank",
        },
        netCheck: {
            required: "Select Box",
        },   
    },
    submitHandler: function(form) {
      window.location = "confirmation.html";
    }
  });
});

//Wallet card Validation

$(document).ready(function(){
    $("form#walletForm").validate({
    rules: {         
        walletCheck: {
            required: true,
        },
    },
    messages: {
        walletCheck: {
            required: "Please Select Wallet",
        },   
    },
    submitHandler: function(form) {
      window.location = "confirmation.html";
    }
  });
});

//UPI card Validation

$(document).ready(function(){
    $("form#upiForm").validate({ 
    rules: {         
        upiName: {
            required: true,
        },
         upiCheck: {
            required: true,
        },
    },
    messages: {
        upiName: {
            required: "Please Select Wallet",
        },
        upiCheck: {
            required: "Please Select Box",
        },   
    },
    submitHandler: function(form) {
      window.location = "confirmation.html";
    }
  });
});

//Change Style

$(document).ready(function(){
  $(".flexify-section").click(function(){
    $('#checkTwo').attr('checked', true);
    $('#checkOne').attr('checked', false);
    $("#fare-section").removeClass("fare-section");
    $("#fare-section").addClass("fare-change");
    $("#flexify-section").removeClass("flexify-section");
    $("#flexify-section").addClass("flexify-change");
  });
  $(".fare-section").click(function(){
    $('#checkOne').attr('checked', true);
    $('#checkTwo').attr('checked', false);
    $("#fare-section").removeClass("fare-change");
    $("#fare-section").addClass("fare-section");
    $("#flexify-section").removeClass("flexify-change");
    $("#flexify-section").addClass("flexify-section");
  });
  $("#checkOne").click(function(){
    $('#checkOne').attr('checked', true);
    $('#checkTwo').attr('checked', false);
  });
  $("#checkTwo").click(function(){
    $('#checkTwo').attr('checked', true);
    $('#checkOne').attr('checked', false);
  });
});



