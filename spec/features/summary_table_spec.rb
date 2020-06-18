RSpec.describe 'checks proper behaviors caused by actions on summary table', type: :feature do
  it 'checks actions on summary table like ' do

    login

    add_two_different_products_action

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
    expect(page).to have_content('Printed Summer Dress') #added product in action
    expect(page).to have_content('Blouse') #added product in action

    ###### Full price for these two products is $28.98 + $27.00 = $55.98
    expect(page).to have_content('$55.98')

    plus_quantity_summary_button  # adds one Printer Summer Dress more
    expect(page).to have_no_content('$55.98') #total price has changed
    minus_quantity_summary_button #quantity should be now equal 1
    expect(page).to have_content('$55.98')

    remove_from_summary_button
    sleep(2)
    expect(page).to have_no_content('Printed Summer Dress')
    expect(page).to have_content('Blouse')

    click_link('Blouse', match: :first)
    expect(page).to have_content('Short sleeved blouse with feminine draped sleeve detail.') #description of Blouse on detail page
  end
end
