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


//home banner
$(document).ready(function() {
    $('.section-topbanner').slick();

})

//PAGE ABOUT
var about_coll = document.getElementsByClassName("about-collapsible");
var about_i;

for (about_i = 0; about_i < about_coll.length; about_i++) {
    about_coll[about_i].addEventListener("click", function() {
        this.classList.toggle("active");
        var content = this.nextElementSibling;
        if (content.style.maxHeight){
            content.style.maxHeight = null;
        } else {
            content.style.maxHeight = content.scrollHeight + "px";
        }
    });
}



