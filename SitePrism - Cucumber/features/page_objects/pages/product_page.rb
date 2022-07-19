module Pages
    class ProductPage < SitePrism::Page
        set_url'/'

        elements :colors, '.attribute_list a'
        element :main_image, '#bigpic'
    end
end