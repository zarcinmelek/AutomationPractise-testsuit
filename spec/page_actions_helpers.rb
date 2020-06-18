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

  def summary_step_action
    login
    add_to_cart_action
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
    expect(page).to have_content('Printed Summer Dress')
  end

  def address_step_action
    summary_step_action
    proceed_to_checkout_summary_button
    expect(page).to have_content('YOUR DELIVERY ADDRESS')
    expect(page).to have_content('YOUR BILLING ADDRESS')
  end

  def shipping_step_action
    address_step_action
    proceed_to_checkout_address_button
    term_of_service_checkbox
  end

  def payment_by_check_step_action
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

    pay_by_check_button
    expect(page).to have_content('You have chosen to pay by check')
  end
end
