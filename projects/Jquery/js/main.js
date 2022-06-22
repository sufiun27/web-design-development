/*slide toggle */
$(document).ready(function(){
    $("#btn-toggle").click(function(){
        $("#toggle").toggle(1000);
    });
});
/*close slide toggle */

/* fade toggle */
$(document).ready(function(){
    $("#btn-fade-toggle").click(function(){
        $("#fade-1").fadeToggle();
        $("#fade-2").fadeToggle("slow");
        $("#fade-3").fadeToggle("3000");
    })
})
/*close fade toggle */

/* fade-to  */
$(document).ready(function(){
    $("#btn-fade-to").click(function(){
        $("#fade-to-1").fadeTo("slow",0.5);
        $("#fade-to-2").fadeTo("slow",0.4);
        $("#fade-to-3").fadeTo("3000",0.2);
    });
});
/*close fade-to  */

/*slide toggle */
$(document).ready(function(){
    $("#btn-slide-toggle").click(function(){
        $("#slide-Toggle").slideToggle("slow");
    });
});
/*close slide toggle */
/* animate section */
$(document).ready(function(){
    $("#btn-animate").click(function(){
        var div = $("#this-animate");  
        div.animate({left: '30%'}, "slow");
        div.animate({height: '300px', opacity: '0.4'}, "slow");
        div.animate({width: '600px', opacity: '0.8'}, "slow");
        div.animate({fontSize: '8em'}, "slow");
    });
});
/* animate section */

/* aleart section */
$(document).ready(function(){
    $("#btn-aleart").click(function(){
        $("#this-hide").hide("slow",function(){
            alert("this paragraph is now hidden");
        });
    });
});
/* close aleart section */