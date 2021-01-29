class SearchPage
  def initialize(browser)
    @browser = browser
  end

  def open_search
    @browser.link(href: /sok/)
  end

  def query_text
    @browser.text_field(css: '[class ^= "searchContainer"] [class ^= "input"]')
  end

  def result_card_headings
    @browser.h3s(css: '[class ^= "cardInfo-"] h3').map(&:text)

    # ... same as:
    #
    #   h3_elements(css: '[class ^= "cardInfo-"] h3').map do |el|
    #   el.text
    # end
  end
end
