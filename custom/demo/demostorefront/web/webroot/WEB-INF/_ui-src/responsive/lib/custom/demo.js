$(".demo-dropdown").click(() => {
    if ($(".demo-dropdown-content").css("display") == "none")
        $(".demo-dropdown-content").css("display", "block");
    else
        $(".demo-dropdown-content").css("display", "none");
})

$(".demo-cart-data").map((i, el) => {
    let buttonMin = $(el).find(".demo-cart-data-qty .demo-cart-qty .demo-cart-qty-min")[0];
    let buttonPlus = $(el).find(".demo-cart-data-qty .demo-cart-qty .demo-cart-qty-plus")[0];
    let qty = Number($(el).find(".demo-cart-data-qty .demo-cart-qty .js-update-entry-quantity-input")[0].value)

    buttonMin.onclick = () => {
        if (qty > 1) {
            qty -= Number(1)
            $(el).find(".js-update-entry-quantity-input")[0].value = qty
            $.ajax({
                type: 'post',
                url: 'cart/update',
                data: $(el).find('.updateForm').serialize(),
                success: (res) => {
                    $(el).find(".demo-cart-total").html(res.itemTotalPrice);
                    $($(".demo-cart-order-total").find("div")[1]).html(res.cartTotalPrice)
                },
            });
        }
    }

    buttonPlus.onclick = () => {
        qty += Number(1)
        $(el).find(".js-update-entry-quantity-input")[0].value = qty
        $.ajax({
            type: 'post',
            url: 'cart/update',
            data: $(el).find('.updateForm').serialize(),
            success: function (res) {
                $(el).find(".demo-cart-total").html(res.itemTotalPrice);
                $($(".demo-cart-order-total").find("div")[1]).html(res.cartTotalPrice)
            }
        });
    }
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
