RSpec.describe 'Pays by check method', type: :feature do
  it 'chooses check as method of payment' do

    shipping_step_action
    proceed_to_checkout_shipping_button

    expect(page).to have_content('Product')
    expect(page).to have_content('Description')
    expect(page).to have_content('Avail.')
    expect(page).to have_content('Unit price')
    expect(page).to have_content('Qty')
    expect(page).to have_content('Printed Summer Dress')
    expect(page).to have_content('TOTAL')

    expect(page).to have_content('check')



############# TODO: CHANGE TESTS BELOW AFTER IMPLEMENTING RADIO BUTTONS

  pay_by_check_button
  expect(page).to have_content('You have chosen to pay by check')







  end
end
