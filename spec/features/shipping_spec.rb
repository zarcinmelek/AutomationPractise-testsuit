RSpec.describe 'Choose method of shippment', type: :feature do
  it 'chooses method of shipment' do

    address_step_action
    comment_input.set('Comment')

    proceed_to_checkout_address_button ## TODO: CHANGE NAME OF THIS BUTTON
    ###### TODO: THERE IS ONLY ONE SHIPPING METHOD AVAILABLE NOW, COMEBACK WHEN ANOTHER WILL BE IMPLEMENTED
    proceed_to_checkout_shipping_button
    expect(page).to have_content('You must agree to the terms of service before continuing.')
    close_popup_button
    term_of_service_checkbox







  end
end
