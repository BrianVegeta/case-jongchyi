class Admin::PhotosController < Admin::BaseController
  before_action :set_admin_photo, only: [:update]

  # POST /admin/photos
  # POST /admin/photos.json
  def create
    respond_to do |format|
      format.json { 
        @photo = Photo.new(photo_params)
        if @photo.save
          render json: {
            photo_width: @photo.avatar_geometry(:original).width,
            thumb: @photo.avatar.url(:thumb),
            action: admin_photo_path(@photo, :json),
            photo_id: @photo.id
          }
        else
          render json: @photo.errors, status: :unprocessable_entity
        end  
      }
    end
  end

  # PATCH/PUT /admin/photos/1
  # PATCH/PUT /admin/photos/1.json
  def update
    respond_to do |format|
      format.json { 
        @photo.attributes = photo_params
        if @photo.save
          @photo.avatar.reprocess!
        end
        render json: {
          thumb: @photo.avatar.url(:thumb)
        }
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:avatar, :crop_x, :crop_y, :crop_w, :crop_h)
    end
end
