$(".demo-dropdown").click(() => {
    if ($(".demo-dropdown-content").css("display") == "none")
        $(".demo-dropdown-content").css("display", "block");
    else
        $(".demo-dropdown-content").css("display", "none");
})

//batsu modip
var count = document.getElementById("num").innerHTML;
$(document).ready(function() {
    $("#plus").on("click", function() {
        if(count>0){
            count++;
            $("#num").html(count);
        }
    })
})
$(document).ready(function() {
    $("#minus").on("click", function() {
        if(count>1){
            count--;
            $("#num").html(count);
        }
    })
})
