require 'nokogiri'
doc = Nokogiri::HTML(File.open('marmiton.html'))

doc.search('.m_search_result').each do |element|
end
    puts "Name : #{element.search('.m_search_titre_recette > a').inner_text}"

array = []
array = doc.search('.m_search_titre_recette > a').xpath('text()')
return array


    puts "Rating : #{element.search('.etoile1').size} / 5}"
    puts "m_search_note_recette"


#     puts
# end

puts element('.m_search_titre_recette > a').
# response = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{keyword}&sort=fastdesc&st=5")
#     doc = nokogiri::HTML(response)
#     doc.search('.m_search_result').each do |element|


# def analyse_url(url)
#   data = Nokogiri::HTML(open(url))
#   title = doc.xpath("//title").text
#   title
# end

# def scraping_each_url(array)
#   result = []
#   array.each do |url|
#     result << analyse_url(url)
#   end
#   result
# end