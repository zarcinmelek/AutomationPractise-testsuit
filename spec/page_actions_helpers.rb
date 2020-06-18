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

  def add_two_different_products_action
    add_to_cart_action

    find(:xpath, '//a[@class="product-name"][contains(text(),"Blouse")]', match: :first).hover
    add_to_cart_thumbnail_button

    expect(page).to have_content('$27.00')
    expect(page).to have_content('Blouse')
    continue_shopping_button
    expect(page).to have_content('2 Products')
  end

end
