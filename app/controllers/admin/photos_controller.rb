class Admin::PhotosController < Admin::BaseController
  before_action :set_admin_photo, only: [:show, :edit, :update, :destroy]

  # GET /admin/photos
  # GET /admin/photos.json
  def index
    @photos = Admin::Photo.all
  end

  # GET /admin/photos/1
  # GET /admin/photos/1.json
  def show
  end

  # GET /admin/photos/new
  def new
    @photo = Admin::Photo.new
  end

  # GET /admin/photos/1/edit
  def edit
  end

  # POST /admin/photos
  # POST /admin/photos.json
  def create
    @photo = Photo.new(photo_params)
    respond_to do |format|
      format.json { 
        if @photo.save
          render json: {
            photo_width: @photo.avatar_geometry(:original).width,
            thumb: @photo.avatar.url(:thumb),
            action: admin_photo_path(@photo, :json),
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
    @photo.attributes = photo_params

    respond_to do |format|
      @photo.save
      @photo.avatar.reprocess!
      format.json { 
        render json: {
          thumb: @photo.avatar.url(:thumb)
        }
      }
      # if @photo.update(photo_params)
      #   format.json { 
      #     render json: {
      #       path: @photo.avatar.url
      #     }
      #   }
      # else
      #   format.html { render action: 'edit' }
      #   format.json { render json: @photo.errors, status: :unprocessable_entity }
      # end
    end
  end

  # DELETE /admin/photos/1
  # DELETE /admin/photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to admin_photos_url }
      format.json { head :no_content }
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
