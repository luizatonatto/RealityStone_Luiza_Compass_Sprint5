Dado('que esteja na Home') do
  @home_page = Home.new
  @home_page.load
  #binding.pry
end

Quando('realizar uma search por um produto existente') do
  @home_page.search_for("Dresses")
  @search_results_page = SearchResults.new
  #binding.pry
end

Então('deverá ser retornado o resultado da busca escolhida') do
  @search_results_page #trazer produto
  expect(@search_results_page).to have_products
end