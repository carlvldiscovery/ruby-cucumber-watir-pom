require 'page-object'

class AppPage
  include PageObject

  button(:onetrust_accept, id: 'onetrust-accept-btn-handler')
end
