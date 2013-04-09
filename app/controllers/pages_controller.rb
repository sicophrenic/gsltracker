class PagesController < ApplicationController
  def home
    @homepage = gomtv_home
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
      @count = 0
      content.match(/<!-- S:slide content -->(.*)<!-- E:slide content -->/)
      content = $1
      content.match(/(title=\".{30,80}\" ><img src=\"http:\/\/img.gomtv.net\/imgdata\/\d{5,10}\.jpg\")/)
      section = $1
      while section != nil do
        content = content.gsub(section, "")
        section.match(/src=\"(.*)\"/)
        img = $1
        section.match(/title=\"(.*)\" >/)
        info = $1
        data[img] = info
      	@count += 1
        content.match(/(title=\".{30,80}\" ><img src=\"http:\/\/img.gomtv.net\/imgdata\/\d{5,10}\.jpg\")/)
        section = $1
      end
      # content.match(/<dt id="promotion_#{@count}"(.*)main_pro_num/)
      # section = $1
      # if section != nil
      #   section.match(/src="(.*jpg)"/)
      #   img = $1
      #   section.match(/title="(.*)"\s?class.*"tit"/)
      #   info = $1
      #   data[img] = info
      #   @count += 1
      # end
      # @count -= 1
      data
    end
end
