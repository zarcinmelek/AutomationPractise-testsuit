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
end
