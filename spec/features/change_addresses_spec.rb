RSpec.describe 'changing address for invoice', type: :feature do
  it 'unmarks checbox and changes addresses' do

    address_step_action

    choose_delivery_address_select

    my_second_home_option

    billing_address_checkbox
    choose_billing_address_select
    my_second_address_option
    expect(page).to have_content('dsf, Colorado 34902')
    expect(page).to have_content('rdk, Alabama 54321')



  end
end
