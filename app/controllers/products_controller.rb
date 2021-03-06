class ProductsController < ApplicationController
  before_action :set_product, only: %i[show update destroy]

  # POST /search
  def search
    @filtered_products = Product.search(params['query'])

    render json: @filtered_products
  end

  # GET /products
  def index
    @products = if params[:category_id]
                  Product.where(['category = ?', params[:category_id]])
                else
                  Product.all
                end

    render json: @products
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def product_params
    params.fetch(:product, {})
  end
end
