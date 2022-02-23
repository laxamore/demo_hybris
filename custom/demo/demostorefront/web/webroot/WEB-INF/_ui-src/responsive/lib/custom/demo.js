$(".demo-dropdown").click(() => {
    if ($(".demo-dropdown-content").css("display") == "none")
        $(".demo-dropdown-content").css("display", "block");
    else
        $(".demo-dropdown-content").css("display", "none");
})

$(".demo-cart-data").map((i, el) => {
    let updateChartInput = $(el).find('input[name="quantity"]');
    let entryNumber = $(el).find('input[name="entryNumber"]').val();
    let productCode = $(el).find('input[name="productCode"]').val();
    let initialQuantity = $(el).find('input[name="initialQuantity"]').val();
    let buttonMin = $(el).find(".demo-cart-data-qty .demo-cart-qty .demo-cart-qty-min")[0];
    let buttonPlus = $(el).find(".demo-cart-data-qty .demo-cart-qty .demo-cart-qty-plus")[0];

    const updateCart = (qty) => {
        $.ajax({
            type: 'post',
            url: 'cart/update',
            data: {
                "entryNumber": entryNumber,
                "productCode": productCode,
                "initialQuantity": initialQuantity,
                "quantity": qty
            },
            success: function (res) {
                $(el).find(".demo-cart-total").html(res.itemTotalPrice);
                $($(".demo-cart-order-total").find("div")[1]).html(res.cartTotalPrice)
            }
        });
    }

    buttonMin.onclick = () => {
        let qty = Number(updateChartInput[0].value)
        if (qty > 1) {
            qty -= Number(1)

            updateChartInput[0].value = qty
            updateCart(qty);
        }

    }

    buttonPlus.onclick = () => {
        let qty = Number(updateChartInput[0].value)
        qty += Number(1)

        updateChartInput[0].value = qty
        updateCart(qty);
    }

    updateChartInput.on('change', () => {
        let qty = Number(updateChartInput[0].value)

        if (qty < 1) {
            updateChartInput.val(1);
        } else {
            updateCart(qty);
        }
    })
})
