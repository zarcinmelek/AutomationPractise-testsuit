RSpec.describe 'Updating already existing address on another step', type: :feature do
  it 'checks actions on summary table like ' do

    summary_step_action
    proceed_to_checkout_summary_button
    choose_delivery_address_select
    my_second_home_option
    expect(page).to have_content('dsf, Colorado 34902')

    update_address_button
    expect(page).to have_content('City')
    expect(page).to have_content('State')
    expect(page).to have_content('First name')
    expect(page).to have_content('Last name')
    expect(page).to have_content('Address')
    expect(page).to have_content('Zip/Postal Code')
    expect(page).to have_content('Country')

    address_city_input.set('awf')

    submit_address_button
    expect(page).to have_no_content('dsf, Colorado 34902')
    expect(page).to have_content('awf, Colorado 34902')

    update_address_button
    address_city_input.set('dsf')
    submit_address_button
    expect(page).to have_content('dsf, Colorado 34902')

  end
end
