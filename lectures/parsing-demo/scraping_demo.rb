require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com

# ingredient = "chocolate"
url = "https://www.bbcgoodfood.com/search?q=chicken"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML.parse(html_file)

# CSS_SELECTOR
# .avatar #=> . represent class
# #message-1 => # represent ID
# h1 => all h1 tags


html_doc.search(".standard-card-new__article-title").each do |element|
  p element.text.strip
  p element.attribute('href').value
end
