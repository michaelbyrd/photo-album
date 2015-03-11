class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render xml: @photo }
    end
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = 'Photo was successfully created.'
      redirect_to @photo
    else
      render :action => "new"
    end
  end

  def index
    @photos = Photo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @photos }
    end
  end

  def show
  end

  private def set_photo
    @photo = Photo.find(params[:id])
  end

  private def photo_params
    params.require(:photo).permit(:title, :upload)
  end
end
