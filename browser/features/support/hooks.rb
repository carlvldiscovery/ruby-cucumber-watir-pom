require_relative '../pages/app'
require_relative '../pages/search'
require_relative '../pages/login'
require_relative '../pages/myacc'

Before do
  @browser = Watir::Browser.new

  $appPage = AppPage.new(@browser)
  $searchPage = SearchPage.new(@browser)
  $loginPage = LoginPage.new(@browser)
  $myaccPage = MyAccPage.new(@browser)
end

After do
  @browser.close
end
