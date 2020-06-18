module PageButtonsHelpers

  def add_to_cart_thumbnail_button
    find('a[class^="button ajax_add_to_cart_button"]', match: :first).click
  end

  def more_button
    find('a[class^="button lnk_view btn btn-default"]', match: :first).click
  end

  def add_to_cart_details_button
    click_button('Submit')
  end

  def continue_shopping_button
    find('span[class^="continue btn btn-default"]').click
  end

  def grid_view
    find(:xpath, '//i[@class="icon-th-large"]').click
  end


  def list_view
    find(:xpath, '//i[@class="icon-th-list"]').click
  end

  def women_tab
    find(:xpath, '//a[@class="sf-with-ul"][contains(text(),"Women")]', match: :first).click
  end

  def quantity_details_input
    find(:xpath, '//input[@id="quantity_wanted"]')
  end

  def cart_dropdown
    find('a[title="View my shopping cart"]').hover
  end

  def remove_from_cart_button
    find(:xpath, '//a[@class="ajax_cart_block_remove_link"]', match: :first).click
  end

  def most_recent_product_in_cart_name
    find(:xpath, '//a[@class="cart_block_product_name"]').click
  end

  def checkout_button
    find(:xpath, '//span[contains(text(),"Check out")]').click
  end

  def remove_from_summary_button
    find('a[title="Delete"]', match: :first).click
  end

  def plus_quantity_summary_button
    find('i[class="icon-plus"]', match: :first).click
  end

  def minus_quantity_summary_button
    find('i[class="icon-minus"]', match: :first).click
  end

  def proceed_to_checkout_summary_button
    find('a[title="Proceed to checkout"]', match: :first).click
  end

  def proceed_to_checkout_shipping_button
    find('button[name="processCarrier"]').click
  end

  def proceed_to_checkout_button
    find('a[title="Proceed to checkout"]', match: :first).click
  end

  def proceed_to_checkout_address_button
    find('button[name="processAddress"]').click
  end

  def update_address_button
    find('a[title="Update"]', match: :first).click
  end

  def address_city_input
    find('input[id="city"]')
  end

  def submit_address_button
    find('button[id=submitAddress]').click
  end

  def choose_billing_address_select
    find(:xpath, '//select[@id="id_address_invoice"]', :visible => false).click
  end

  def my_second_address_option
    find(:xpath, '//select[@id="id_address_delivery"]//option[contains(text(),"My second address")]').click
  end

  def my_second_home_option
    find(:xpath, '//select[@id="id_address_delivery"]//option[contains(text(),"My second home")]').click
  end

  def billing_address_checkbox
    find('input[type="checkbox"]',:visible => false).click
  end

  def choose_delivery_address_select
    find(:xpath, '//select[@id="id_address_delivery"]', :visible => false).click
  end

  def comment_input
    find(:xpath, '//textarea[@name="message"]')
  end

  def close_popup_button
    find('a[title="Close"]').click
  end

  def term_of_service_checkbox
    find(:xpath, '//input[@id="cgv"]', :visible => false).click
  end

  def pay_by_check_button
    find('a[class="cheque"]').click
  end

  def confirm_order_button
    find('button[class="button btn btn-default button-medium"]').click
  end

  def back_to_orders_button
    find('a[title="Back to orders"]').click
  end

  def history_order_details_button
    find('i[class="icon-chevron-right right"]', match: :first).click
  end

  def account_details_button
    find('a[class="account"]').click
  end

  def order_history_button
    find('a[title="Orders"]').click
  end

  def reorder_button
    find('a[title="Reorder"]', match: :first).click
  end

end
