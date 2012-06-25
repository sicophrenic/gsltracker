class PagesController < ApplicationController
  def home
    @homepage = gomtv_home
    puts @homepage
  end
  
  def about
    # flash[:success] = "SUCCESS"
    # flash[:error] = "ERROR"
    # flash[:alert] = "ALERT"
    # flash[:notice] = "NOTICE"
  end
  
  protected
    def gomtv_home
      require 'mechanize'
      data = {}
      agent = Mechanize.new
      page = agent.get('http://gomtv.net')
      content = page.content.gsub("\r","").gsub("\t","").gsub("\n","")
      count = 0
      while count <= 5 do
        if count != 5
          content.match(/<dt id="promotion_#{count}"(.*)<dt id="promotion_#{count+1}"/)
          section = $1
          section.match(/src="(.*jpg)"/)
          img = $1
          section.match(/title="(.*)"\s?class.*"tit"/)
          info = $1
        elsif count == 5
          content.match(/<dt id="promotion_#{count}"(.*)main_pro_num/)
          section = $1
          section.match(/src="(.*jpg)"/)
          img = $1
          section.match(/title="(.*)"\s?class.*"tit"/)
          info = $1
        end
        data[img] = info
      	count += 1
      end
      data
    end

end
