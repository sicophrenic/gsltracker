require 'mechanize'
imgs = []
infos = []
agent = Mechanize.new
page = agent.get('http://gomtv.net')
content = page.content.gsub("\r","").gsub("\t","").gsub("\n","")
count = 0
while count <= 5 do
  if count != 5
    content.match(/<dt id="promotion_#{count}"(.*)<dt id="promotion_#{count+1}"/)
    $1.match(/src="(.*jpg)"/)
    img = $1
    content.match(/title="(.*)"\s?class.*"tit"/)
    info = $1
    imgs << img
    infos << info
  elsif count == 5
    content.match(/<dt id="promotion_#{count}"(.*)main_pro_num/)
    $1.match(/src="(.*jpg)"/)
    img = $1
    content.match(/title="(.*)"\s?class.*"tit"/)
    info = $1
    imgs << img
    infos << info
  end
	count += 1
end