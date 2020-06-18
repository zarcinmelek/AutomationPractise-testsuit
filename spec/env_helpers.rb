module EnvHelpers
  def main_page_path
    ENV.fetch('MAIN_PAGE_PATH')
  end

  def logout_url
    ENV.fetch('LOGOUT_URL')
  end
end
