class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    set_page_title I18n.t('product.sample')
    @is_current_cate = {params[:category].to_i => 'current-cate'}

    @sub_cates = Product.sub_cates[params[:category].to_i]
    render_404 if @sub_cates.nil?
    @products = {}
    @sub_cates.each_pair do |k, name|
      sub_products = Product.where(category: k)
      @products[k] = sub_products if sub_products.present?
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    respond_to do |format|
      format.json { render json: {
          title: @product.trans_title,
          content: @product.trans_content,
          thumb: view_context.image_path( @product.photo.avatar.url(:thumb) )
        } 
      }
      
    end
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product }
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
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
      params[:product]
    end
end
