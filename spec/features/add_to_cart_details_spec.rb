RSpec.describe 'Adding to cart products from details page', type: :feature do
  it 'adds products from details of the product' do
    visit main_page_path
    expect(page).to have_content('empty')
    expect(page).to have_no_content('Sign out')

    find(:xpath, '//a[@class="product-name"][contains(text(),"Printed Dress")]', match: :first).hover
    more_button

    expect(page).to have_content('Quantity')
    expect(page).to have_content('Size')
    add_to_cart_details_button

    expect(page).to have_content('Printed Dress')
    expect(page).to have_content('$28.00')

    continue_shopping_button

    expect(page).to have_content('1 Product')

    quantity_details_input.set('120')
    add_to_cart_details_button
    expect(page).to have_content('Printed Dress')
    expect(page).to have_no_content('$28.00')
    expect(page).to have_content('There are 121 items in your cart.')
    continue_shopping_button

    expect(page).to have_content('121 Products')

  end
end
