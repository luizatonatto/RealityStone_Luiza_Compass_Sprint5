module Pages
    class Home < SitePrism::Page
        set_url '/'

        element :search_input, '[id="search_query_top"]'
        element :btn_search, '[name="submit_search"]'
        section :header, Sections::Header , 'header' 

        def search_for(product)
        search_input.click
        search_input.set product
        sleep 2
        btn_search.click

        end
    end
end