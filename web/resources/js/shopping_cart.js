/* JS Document */

/******************************

[Table of Contents]

1. Add product to cart
2. Update product in cart
3. Delete product in cart
4. Checkout


******************************/
const BACKEND_URL = "http://localhost:8080/ProjectJavaWeb"
var addProductToCart = function (productId, quantity = 1) {
  $.ajax({
    method: "POST",
    url: `${BACKEND_URL}/shopping-cart/add`,
    data: {
      productId,
      quantity
    },
    success: function (response) {
      if (response.status === "success") {
        alertify.notify("Đã thêm sản phẩm vào trong giỏ hàng. Vào giỏ hàng để xem chi tiết", "success", 7)
        $(".cart_total_items").find("span").text(response.returnObject ? Object.keys(response.returnObject).length : 0)
        var totalPrice = 0
        for (var key in response.returnObject) {
          var product = response.returnObject[key].product
          var quantity = response.returnObject[key].quantity
          price = product.promotionPrice ? product.promotionPrice : product.price
          totalPrice += price * quantity
        }
        $(".cart_total_price").text(`$${totalPrice.toFixed(1)}`)
      }
    }
  })
}

var updateProductInCart = function (productId, quantity) {
  $.ajax({
    method: "POST",
    url: `${BACKEND_URL}/shopping-cart/update`,
    data: {
      productId,
      quantity
    },
    success: function (response) {
      if (response.status === "success") {
        alertify.notify("Đã cập nhật thông tin giỏ hàng", "success", 7)
        $(".cart_total_items").find("span").text(response.returnObject ? Object.keys(response.returnObject).length : 0)
        var totalPrice = 0
        for (var key in response.returnObject) {
          var product = response.returnObject[key].product
          var quantity = response.returnObject[key].quantity
          price = product.promotionPrice ? product.promotionPrice : product.price
          if (key == productId) {
            $(`.shopping_cart_total_${productId}`).text(`$${(quantity * price).toFixed(1)}`)
          }
          totalPrice += price * quantity
        }
        $(".cart_total_price").text(`$${totalPrice.toFixed(1)}`)
        $(".order_total_amount").text(`$${totalPrice.toFixed(1)}`)
      }
    }
  })
}

var deleteProductInCart = function (productId) {
  $.ajax({
    method: "POST",
    url: `${BACKEND_URL}/shopping-cart/delete`,
    data: {
      productId
    },
    success: function (response) {
      if (response.status === "success") {
        alertify.notify("Đã xóa sản phẩm trong giỏ hàng", "error", 7)
        $(".cart_total_items").find("span").text(response.returnObject ? Object.keys(response.returnObject).length : 0)
        var totalPrice = 0
        for (var key in response.returnObject) {
          var product = response.returnObject[key].product
          var quantity = response.returnObject[key].quantity
          price = product.promotionPrice ? product.promotionPrice : product.price
          totalPrice += price * quantity
        }
        if (!Object.keys(response.returnObject).length) {
          $('ul.cart_list').remove()
        }
        $(`li[data-uid="${productId}"]`).remove()
        $(".cart_total_price").text(`$${totalPrice.toFixed(1)}`)
        $(".order_total_amount").text(`$${totalPrice.toFixed(1)}`)
      }
    }
  })
}

var checkValidForm = function () {
  var customerName = $('#contact_form_name').val()
  var customerPhone = $('#contact_form_phone').val()
  var customerAddress = $('#contact_form_address').val()
  var customerEmail = $('#contact_form_email').val()
  return customerName.length && customerPhone.length && customerAddress.length && customerEmail.length
}

$(document).ready(function () {
  $('#addToCartProductDetail').click(function () {
    var quantity = parseInt($('#quantity_input').val())
    if (isNaN(quantity)) {
      alertify.notify("Số lượng sản phẩm không hợp lệ.", "error", 7)
      return
    }
    var productId = $('.product_name').data('uid')
    addProductToCart(productId, quantity)
  })

  $('.edit_quantity_shopping_cart').unbind('click').bind('click', function () {
    var productId = $(this).data('target')
    var quantity = parseInt($(`.shopping_cart_quantity_${productId}`).val())
    if (isNaN(quantity)) {
      alertify.notify("Số lượng sản phẩm không hợp lệ.", "error", 7)
      return
    }
    updateProductInCart(productId, quantity)
  })

  $('.delete_product_shopping_cart').unbind('click').bind('click', function () {
    var productId = $(this).data('target')
    deleteProductInCart(productId)
  })

  $('.checkmark').unbind('click').bind('click', function () {
    $(this).hasClass('active') ? $(this).removeClass('active') : $(this).addClass('active')
  })

  $('.cart_button_checkout').bind('click', function () {
    var listProductId = []
    $('.checkmark').each(function (index) {
      if ($(this).hasClass('active')) {
        listProductId.push($(this).data('uid'))
      }
    })
    localStorage.setItem('listProductId', listProductId)
    window.location.href = `${BACKEND_URL}/checkout`;
  })

  $('.contact_submit_button').bind('click', function () {
    if (checkValidForm()) {
      Swal.fire({
        title: 'Bạn có chắc chắn đã nhập đúng thông tin ?',
        text: 'Chúng tôi sẽ tạo một đơn hàng mới, bạn không thể thay đổi các thông tin liên hệ này nữa!',
        type: 'info',
        showCancelButton: true,
        confirmButtonColor: '#2ECC71',
        cancelButtonColor: '#FF7675',
        confirmButtonText: 'Xác nhận',
        cancelButtonText: 'Hủy bỏ'
      }).then((result) => {
        if (!result.value) {
          return false
        } else if (result.value) {
          listProductId = localStorage.getItem('listProductId')
          $.ajax({
            method: 'POST',
            url: `${BACKEND_URL}/checkout/create-order`,
            data: {
              listProductId,
              customerName: $('#contact_form_name').val(),
              customerPhone: $('#contact_form_phone').val(),
              customerAddress: $('#contact_form_address').val(),
              customerEmail: $('#contact_form_email').val()
            },
            success: function (response) {
              if (response.status === "success") {
                localStorage.removeItem('listProductId')
                $(".cart_total_items").find("span").text(response.returnObject ? Object.keys(response.returnObject).length : 0)
                var totalPrice = 0
                for (var key in response.returnObject) {
                  var product = response.returnObject[key].product
                  var quantity = response.returnObject[key].quantity
                  price = product.promotionPrice ? product.promotionPrice : product.price
                  totalPrice += price * quantity
                }
                $(".cart_total_price").text(`$${totalPrice.toFixed(1)}`)

                alertify.notify('Đặt hàng thành công rồi. Chúng tôi sẽ chuyển hàng cho bạn trong thời gian sớm nhất', 'success', 7)
                Swal.fire({
                  position: 'top-end',
                  title: 'Tự động chuyển trang sau 3 giây.',
                  html: 'Thời gian: <strong></strong>',
                  width: 400,
                  timer: 3000,
                  onBeforeOpen: () => {
                    Swal.showLoading()
                    timeInterval = setInterval(() => {
                      Swal.getContent().querySelector('strong').textContent = Math.ceil(Swal.getTimerLeft() / 1000)
                    }, 1000)
                  },
                  onClose: () => {
                    clearInterval(timeInterval)
                  }
                }).then(result => {
                  window.location.href = `${BACKEND_URL}/shopping-cart`;
                })
              } else {
                alertify.notify('Đã xảy ra lỗi, vui lòng thực hiện lại', 'error', 7)
              }
            }
          })
        }
      }) 
    } else {
      Swal.fire({
        icon: 'error',
        title: 'Oops...',
        text: 'Bạn phải nhập đầy đủ thông tin'
      })
    }
  })
})
