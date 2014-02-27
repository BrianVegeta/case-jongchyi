class Admin::ProductsController < Admin::BaseController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /admin/products
  # GET /admin/products.json
  def index
    @products = Product.all
  end

  # GET /admin/products/1
  # GET /admin/products/1.json
  def show
  end

  # GET /admin/products/new
  def new
    @photo = Photo.new
    @product = Product.new
  end

  # GET /admin/products/1/edit
  def edit
    @photo = Photo.new
  end

  # POST /admin/products
  # POST /admin/products.json
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path, notice: '產品已成功新增。'
    else
      flash.now[:alert] = extrac_error_message(@product)
      render action: 'new'
    end
  end

  # PATCH/PUT /admin/products/1
  # PATCH/PUT /admin/products/1.json
  def update
    if @product.update(product_params)
      redirect_to admin_products_path, notice: '產品已成功更新。'
    else
      flash.now[:alert] = extrac_error_message(@product)
      render action: 'edit'
    end
  end

  # DELETE /admin/products/1
  # DELETE /admin/products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to admin_products_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(
        :category,
        :photo_id,
        :title, 
        :content,
        :zh_cn_title,
        :zh_cn_content
      )
    end
end
