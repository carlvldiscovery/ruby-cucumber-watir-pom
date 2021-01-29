require_relative '../pages/app'
require_relative '../pages/search'

Before do
  @browser = Watir::Browser.new

  $appPage = AppPage.new(@browser)
  $searchPage = SearchPage.new(@browser)
end

After do
  @browser.close
end
