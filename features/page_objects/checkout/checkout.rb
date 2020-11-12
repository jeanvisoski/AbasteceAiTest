module Checkout
    class Checkout < SitePrism::Page
        element :product, '#homefeatured > li:nth-child(2)'
        element :add_to_cart, '#add_to_cart > button'
        element :proceed_checkout, '#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a'
        element :summary_proceed_checkout, '#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium'
        element :email, '#email'
        element :password, '#passwd' 
        element :submit_login, '#SubmitLogin'
        element :address_proceed_checkout, '#center_column > form > p > button'
        element :accept_terms, '#uniform-cgv'
        element :shipping_proceed_checkout, '#form > p > button'
        element :payment, '#HOOK_PAYMENT > div:nth-child(1) > div > p > a'
        element :confirm_order, '#cart_navigation > button'
        element :sucess_order, '#center_column > div > p > strong'
        element :not_accept_terms, '#order > div.fancybox-overlay.fancybox-overlay-fixed > div > div > div > div > p'
    end
end