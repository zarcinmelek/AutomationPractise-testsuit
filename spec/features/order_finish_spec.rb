RSpec.describe 'Finish your order and go to history ', type: :feature do
  it 'finishes order, goes to history and reorder' do

    payment_by_check_step_action
    confirm_order_button
    expect(page).to have_content('empty') #Our cart is now empty
    expect(page).to have_content('ORDER CONFIRMATION')

    back_to_orders_button

    expect(page).to have_content('ORDER HISTORY')
    expect(page).to have_content('Order reference')


    history_order_details_button
    expect(page).to have_content('Printed Summer Dress')
    expect(page).to have_content('Carrier')
    expect(page).to have_content('Shipping cost')
    expect(page).to have_content('Carrier')

    account_details_button
    order_history_button
    expect(page).to have_content('Order reference')
    reorder_button
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
