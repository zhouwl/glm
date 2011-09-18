class HomeController < ApplicationController
  layout false
  def index
    @rs = User.all
    
  end
  
  def time_episodes
    
  end
  
  def dream_girl
  end
  
  def apple_slider
  end
  
  def image_puzzle
  end
  

  
  def pdf
    require 'pdf/reader'
    @r = {}
    p "pdfffffffff"
    # @reader = PDF::Reader.new("#{Rails.root.to_s}/public/p.pdf") # do |reader|
    #    p @reader.blank?
    #    p @reader.methods
    #   p @reader.info
    
 
   
   # @receiver = PageTextReceiver.new
   #    @pdf = PDF::Reader.file(Rails.root.to_s + "/public/p.pdf", @receiver)
   #    puts @receiver.content
   #    @render 
  # cat = Magick::ImageList.new(Rails.root.to_s + "/public/p.pdf")
   #cat.write(Rails.root.to_s + "/public/p1.jpg")
   
   
   #cat = Magick::ImageList.new(Rails.root.to_s + "/public/1.jpg")
  # smallcat = cat.minify
   #smallcat.display
   #smallcat.write(Rails.root.to_s + "/public/Small-Cheetah.gif")
   #exit
   
   
   # image = Magick::Image.open(Rails.root.to_s + "/public/1.jpg")
   # image.resize "100x100"
   # image.write  "output.jpg"
   
   #require 'RMagick'
  # pdf = Magick::ImageList.new(Rails.root.to_s + "/public/p.pdf")
  # thumb = pdf.scale(300, 300)
  # pdf.write "doc.png"
   
  # pdf = Magick::ImageList.new(Rails.root.to_s + "/public/p.pdf")
   #pdf.write("#{Rails.root.to_s}/public/myimage.jpg")
   
    #       p "reader.blank? = #{reader.blank?}"
    #       p reader.pdf_version
    #       @r["verion"] = reader.pdf_version
    #       @r[:info] = reader.info,
    #       @r[:metadata] =  reader.metadata,
    #       @r[:page_count] = reader.page_count
    #     end
    #     p @r.size
    
    
    
    render :layout => false
  end
  
  def get_pdf
    p Rails.root.to_s
    path = Rails.root.to_s + "/public/p.pdf"
    send_file path, :type => "application/pdf", :disposition => 'inline'
  end
  
  def get_swf
    path = Rails.root.to_s + "/public/Paper3.swf"
    send_file path, :type => "application/x-shockwave-flash"
  end
  
  
  class PageTextReceiver
    attr_accessor :content

    def initialize
      @content = []
    end

    # Called when page parsing starts
    def begin_page(arg = nil)
      @content << ""
    end

    # record text that is drawn on the page
    def show_text(string, *params)
      @content.last << string.strip
    end

    # there's a few text callbacks, so make sure we process them all
    alias :super_show_text :show_text
    alias :move_to_next_line_and_show_text :show_text
    alias :set_spacing_next_line_show_text :show_text

    # this final text callback takes slightly different arguments
    def show_text_with_positioning(*params)
      params = params.first
      params.each { |str| show_text(str) if str.kind_of?(String)}
    end
  end
end
