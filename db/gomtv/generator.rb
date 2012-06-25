require 'mechanize'
imgs = []
agent = Mechanize.new
page = agent.get('http://gomtv.net')
content = page.content.gsub("\r","").gsub("\t","").gsub("\n","")
count = 0
while count <= 5 do
  if count != 5
    content.match(/<dt id="promotion_#{count}"(.*)<dt id="promotion_#{count+1}"/)
    $1.match(/src="(.*jpg)"/)
  elsif count == 5
    content.match(/<dt id="promotion_#{count}"(.*)main_pro_num/)
    $1.match(/src="(.*jpg)"/)
  end
  img = $1
  imgs << img
end