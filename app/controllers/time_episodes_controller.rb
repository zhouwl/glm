class TimeEpisodesController < ApplicationController
  layout false
  # GET /time_episodes
  # GET /time_episodes.json
  def index
    @time_episodes = TimeEpisode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @time_episodes }
    end
  end

  # GET /time_episodes/1
  # GET /time_episodes/1.json
  def show
    @time_episode = TimeEpisode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @time_episode }
    end
  end

  # GET /time_episodes/new
  # GET /time_episodes/new.json
  def new
    @time_episode = TimeEpisode.new
    @time_episode.order = TimeEpisode.last.order + 1
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @time_episode }
    end
  end

  # GET /time_episodes/1/edit
  def edit
    @time_episode = TimeEpisode.find(params[:id])
  end

  # POST /time_episodes
  # POST /time_episodes.json
  def create
    @time_episode = TimeEpisode.new(params[:time_episode])

    respond_to do |format|
      if @time_episode.save
        format.html { redirect_to @time_episode, notice: 'Time episode was successfully created.' }
        format.json { render json: @time_episode, status: :created, location: @time_episode }
      else
        format.html { render action: "new" }
        format.json { render json: @time_episode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /time_episodes/1
  # PUT /time_episodes/1.json
  def update
    @time_episode = TimeEpisode.find(params[:id])

    respond_to do |format|
      if @time_episode.update_attributes(params[:time_episode])
        format.html { redirect_to @time_episode, notice: 'Time episode was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @time_episode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_episodes/1
  # DELETE /time_episodes/1.json
  def destroy
    @time_episode = TimeEpisode.find(params[:id])
    @time_episode.destroy

    respond_to do |format|
      format.html { redirect_to time_episodes_url }
      format.json { head :ok }
    end
  end
end
