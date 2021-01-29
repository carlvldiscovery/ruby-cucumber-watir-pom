class AppPage
  def initialize(browser)
    @browser = browser
  end

  def onetrust_accept
    @browser.button(id: 'onetrust-accept-btn-handler')
  end
end
