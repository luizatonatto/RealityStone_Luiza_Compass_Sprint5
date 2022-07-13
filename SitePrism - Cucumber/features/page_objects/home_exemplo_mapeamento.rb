class FooterExemploMapeamento < SitePrism::Section

    element :img_facebook, "#social_block > ul > li.facebook"
    element :img_twitter, "#social_block > ul > li.twitter"
end

class ProductsExemploMapeamento < SitePrism::Section


    element :name, "a.product_name"
    element :price, "div.content_price"
end

class HomeExemploMapeamento < SitePrism::Page
    set_url '/'

    element :btn_open_search, "#searchbox > button"
    elements :menu_links, "#block_top_menu"
    # menu_items.first.click
    # menu_items[2].click

    section :footer , FooterExemploMapeamento , "#page > div.footer-container"
    # footer.img_facebook.click 
    # footer.img_facebook.click 

    sections :products, ProductsExemploMapeamento, "#center_column > ul"
    # products[2].price.click
    # products.last.click
end