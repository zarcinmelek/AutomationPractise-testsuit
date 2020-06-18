RSpec.describe 'checks proper behaviors caused by actions on summary table', type: :feature do
  it 'adds products and removes it' do

    add_to_cart_action

    cart_dropdown
    within (find('div[class="shopping cart"]')) do

      expect(page).to have_content('Shipping')
      expect(page).to have_content('Total')
      expect(page).to have_content('Quantity')



      remove_from_cart_button

    end
    expect(page).to have_content('empty')
  end
end
