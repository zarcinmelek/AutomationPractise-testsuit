module SessionHelpers
  USERS = {
    marcin: {
      email: ENV.fetch('MARCIN_ZELEK_EMAIL'),
      password: ENV.fetch('MARCIN_ZELEK_PASSWORD')
    }
  }

  def login(user_key = :marcin)
    visit main_page_path
    find(:xpath, '//a[@class="login"]').click

    user = USERS.fetch(user_key)
    find('input[name="email"]', match: :first).set(user[:email])
    find('input[name="passwd"]').set(user[:password])

    find('button[name="SubmitLogin"]').click

    expect(page).to have_content('Sign out')

  end

  def reset_sessions
    browser = Capybara.current_session.driver.browser

    Capybara.reset_sessions!
    browser.manage.delete_all_cookies


  end
  def current_url
    driver.current_url
  end

end
