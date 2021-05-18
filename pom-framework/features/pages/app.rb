require 'page-object'

class AppPage
  include PageObject

  button(:onetrust_accept, id: 'onetrust-accept-btn-handler')
  #login button
  link(:open_login, href: /login/)
  #my account button
  link(:open_myaccount, href: /myaccount\/account/)
  #favourites button
  link(:favourites, href: /^favoriter/)
  #register button
  link(:open_register, href: /^myaccount\/products?/)
  #notification warning
  div(:warning_banner, class: 'notification__message')
  #menu selectors
  divs(:menu_items,css: 'div[class^="nav-"] div[class^="navItem"]')
  #footer selectors
  divs(:footer_items,css: 'footer [class *= "links-"] a')
end

