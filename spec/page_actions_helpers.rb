module PageActionsHelpers

  def add_to_cart_action

    visit main_page_path
    find(:xpath, '//a[@class="product-name"][contains(text(),"Printed Summer Dress")]', match: :first).hover
    add_to_cart_thumbnail_button

    expect(page).to have_content('$28.98')
    expect(page).to have_content('Printed Summer Dress')
    continue_shopping_button
    expect(page).to have_no_content('empty')
  end
end
