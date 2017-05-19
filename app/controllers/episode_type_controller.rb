class EpisodeTypeController < ApplicationController

  before_filter :find_episode_type, only: [:show,:edit,:update,:destroy]

  def index
    @episode_types = EpisodeType.all
  end

  def new
    @episode_type = EpisodeType.new
  end

  def create
    @episode_type = EpisodeType.new(episode_type_params)
    respond_to do |format|
      if @episode_type.save
        format.html{redirect_to episode_type_path(@episode_type.id),notice: "EpisodeType was successfully created."}
        format.json{render :show}
      else
        format.html{render :new}
        format.json{render json: @episode_type.errors}
      end
    end
  end

  def show
    p @episode_type
    # raise
  end

  def edit

  end

  def update
    respond_to do |format|
      if @episode_type.update_attributes(episode_type_params)
        format.html{redirect_to episode_type_path(@episode_type.id),notice: "Episode was successfully updated."}
        format.json{render :show}
      else
        format.html{render :new}
        format.json{render json: @episode_type.errors}
      end
    end
  end

  def destroy
    @episode_type.destroy
    redirect_to episode_type_index_path
  end
  private

  def find_episode_type
    p '++++++++++++++++++caaaaaaaaa'
   p @episode_type = EpisodeType.find(params[:id])
    # raise
  end

  def episode_type_params
    params.permit(:name,:notes)
  end
end
