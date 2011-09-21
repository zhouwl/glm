module ApplicationHelper
  
  #format textarea
  def markdown(text)  
    options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
    #coderay(Redcarpet.new(text).to_html).
    Redcarpet.new(coderay(text)).to_html.html_safe
  end
  
  #syntax highlighting
  def coderay(text)  
     text.gsub(/\<code( lang="(.+?)")?\>(.+?)\<\/code\>/m) do  
       CodeRay.scan($3, $2).div(:css => :class)  
     end  
   end
  
  
  #DateTime format
  
  def diary_date(t)
    t.strftime("%b  %d,  %Y")
  end 
end
