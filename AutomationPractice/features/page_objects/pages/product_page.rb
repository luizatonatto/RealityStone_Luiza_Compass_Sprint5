module Pages
    class ProductPage < SitePrism::Page
        set_url'/'

        elements :colors, '.attribute_list a'
        element :main_image, '#bigpic'

        #element :btn_add_cart_home,  'a.button.ajax_add_to_cart_button.btn.btn-default'
        element :btn_add_cart_pdp, '[id="add_to_cart"]'
        element :btn_quantity_product, '[class="icon-plus"]'
        element :quantity_updated, '[id="quantity_wanted"]'
        element :msg_sucess_cart, '[class="layer_cart_product col-xs-12 col-md-6"] h2'

    
    end
end