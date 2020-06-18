RSpec.describe 'Adding to cart products from thumbnails', type: :feature do
  it 'adds products from thumbnails' do
    visit main_page_path
    expect(page).to have_content('empty')
    expect(page).to have_no_content('Sign out')
    women_tab

    ##### GRID VIEW
    grid_view

    find(:xpath, '//a[@class="product-name"][contains(text(),"Blouse")]').hover
    add_to_cart_thumbnail_button

    expect(page).to have_content('$27.00')
    expect(page).to have_content('Blouse')
    continue_shopping_button
    expect(page).to have_no_content('empty')

    continue_shopping_button

    ##### LIST VIEW
    list_view
    find(:xpath, '//a[@class="product-name"][contains(text(),"Faded Short Sleeve T-shirts")]').hover
    add_to_cart_thumbnail_button

    expect(page).to have_content('$16.51')
    expect(page).to have_content('Faded Short Sleeve T-shirts')

    continue_shopping_button

    expect(page).to have_content('2 Products')
  end
end
