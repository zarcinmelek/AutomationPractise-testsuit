RSpec.describe 'Go to checkout immediately after adding product', type: :feature do
  it 'adds product and goes to summary' do

    login
    expect(page).to have_content('empty')
    visit main_page_path

    find(:xpath, '//a[@class="product-name"][contains(text(),"Printed Summer Dress")]', match: :first).hover
    add_to_cart_thumbnail_button

    expect(page).to have_content('$28.98')
    expect(page).to have_content('Printed Summer Dress')

    proceed_to_checkout_button

    expect(page).to have_content('Summary')
    expect(page).to have_content('Product')
    expect(page).to have_content('Description')
    expect(page).to have_content('Avail.')
    expect(page).to have_content('Unit price')
    expect(page).to have_content('Qty')
    expect(page).to have_content('INVOICE ADDRESS')
    expect(page).to have_content('DELIVERY ADDRESS')
    expect(page).to have_content('Printed Summer Dress')

  end
end
