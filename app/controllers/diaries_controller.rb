class DiariesController < ApplicationController
  before_filter :find_diary, :only => ["show", "edit", "update"]
  
  def index
   
  end
  
  def show
    
  end
  
  def edit
  end
  
  def list
  end
  
  def update
    respond_to do |format|
      if @diary.update_attributes(params[:diary])
        format.html { redirect_to @diary, notice: 'Diary was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @diary.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def new
    @diary = Diary.new
  end
  
  def create
    @diary = Diary.new(params[:diary])
    if @diary.save
      redirect_to :action => "index"
    else
      render :action => "new"
      redirect_to :back, :restore => true
    end
  end
  
  protected
  
  def find_diary
    @diary = Diary.find(params[:id])
  end
  
end