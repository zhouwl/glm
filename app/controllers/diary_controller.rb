class DiaryController < ApplicationController
  
  def index
   
  end
  
  def show
    
  end
  
  def new
    @diary = Diary.new
  end
  
  def create
    @diary = Diary.new(params[:diary])
    if @diary.save
      redirect_to :action => "index"
    else
      redirect_to :back, :restore => true
    end
  end
end