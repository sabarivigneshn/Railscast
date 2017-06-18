class EpisodeController < ApplicationController
  before_filter :find_episode, only: [:show,:edit,:update,:destroy]

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    p params[:video]
    @episode = Episode.new(episode_params)
    p '===========epsidoe'
    p @episode.video = params[:video]
    @episode.duration = params[:duration]
    respond_to do |format|
      if @episode.save
        format.html{redirect_to episode_path(@episode.id), notice: 'Episode was successfully created.'}
        format.json{ render :show}
      else
        format.html{render :new}
        format.json{render json: @episode.errors}
      end

    end
  end

  def show

  end

  def edit

  end

  def update
    p episode_params
    respond_to do |format|
      if @episode.update_attributes(episode_params)
        format.html {redirect_to episode_path(@episode.id), notice: "Episode was successfully updated."}
        format.json {render :show, status: :ok, location: @episode}
      else
        format.html{render :edit}
        format.json{render json: @episode.errors}
      end
    end
  end

  def destroy
    @episode.destroy
    redirect_to episode_index_path
  end
end

private

  def find_episode
      @episode = Episode.find(params[:id])
  end

  def episode_params
      params.permit(:name,:about,:image,:video,:duration,:release_date,:category_id,:episode_type_id)
  end