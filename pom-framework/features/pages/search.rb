require 'page-object'

class SearchPage
  include PageObject

  # INPUT
  link(:open_search, href: /sok/)
  text_field(:query_text, css: '[class ^= "searchContainer"] [class ^= "input"]')

  # RESULTS
  div(:result_container, class: /^cardInfo-/)

  # example of getting an array elements using a method
  def result_card_headings
    h3_elements(css: '[class ^= "cardInfo-"] h3').map(&:text)

    # ... same as:
    #
    #   h3_elements(css: '[class ^= "cardInfo-"] h3').map do |elem|
    #   elem.text
    # end
  end
end
