RSpec.describe 'Check behavior when on summary table and there are no products in cart', type: :feature do
  it 'removes product from cart on summary table' do

    login

    add_to_cart_action

    cart_dropdown
    checkout_button
    expect(page).to have_content('Summary')
    expect(page).to have_content('Product')
    expect(page).to have_content('Description')
    expect(page).to have_content('Avail.')
    expect(page).to have_content('Unit price')
    expect(page).to have_content('Qty')
    expect(page).to have_content('INVOICE ADDRESS')
    expect(page).to have_content('DELIVERY ADDRESS')

    remove_from_summary_button

    expect(page).to have_content('Your shopping cart is empty.')
    ###### removing from cart dropdown on summary
    add_to_cart_action
    cart_dropdown
    checkout_button
    expect(page).to have_content('Product')
    expect(page).to have_content('Description')
    expect(page).to have_content('Avail.')
    expect(page).to have_content('Unit price')
    expect(page).to have_content('Qty')
    expect(page).to have_content('INVOICE ADDRESS')
    expect(page).to have_content('DELIVERY ADDRESS')

    cart_dropdown
    remove_from_cart_button

    expect(page).to have_content('Your shopping cart is empty.')

  end
end
