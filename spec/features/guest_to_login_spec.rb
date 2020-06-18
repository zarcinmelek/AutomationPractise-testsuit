RSpec.describe 'Checking if guest cart is the same after login', type: :feature do
  it 'adds products to cart and login' do
    visit main_page_path
    expect(page).to have_content('empty')
    expect(page).to have_no_content('Sign out')

    find(:xpath, '//a[@class="product-name"][contains(text(),"Faded Short Sleeve T-shirt")]', match: :first).hover
    add_to_cart_thumbnail_button


    expect(page).to have_content('Faded Short Sleeve T-shirt')
    expect(page).to have_content('$16.51')

    continue_shopping_button

    expect(page).to have_content('1 Product')

    login

    expect(page).to have_no_content('empty')
    sleep(1)
    cart_dropdown
    most_recent_product_in_cart_name
    expect(page).to have_content('Faded Short Sleeve T-shirt')

  end
end
