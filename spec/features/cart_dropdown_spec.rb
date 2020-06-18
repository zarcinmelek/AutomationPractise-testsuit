RSpec.describe 'Removes added product from cart dropdown', type: :feature do
  it 'adds products and removes it' do

    add_to_cart_action

    cart_dropdown
    within (find(:xpath, '//div[@class="shopping_cart"]')) do

      expect(page).to have_content('Shipping')
      expect(page).to have_content('Total')

      ##TODO: expect quantity button after it'll be implemented
      

      remove_from_cart_button

    end
    expect(page).to have_content('empty')
  end
end
