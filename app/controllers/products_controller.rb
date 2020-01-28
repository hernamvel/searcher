class ProductsController < ApplicationController

  # GET /products
  # GET /products.json
  def index
  end

  def search
    offset = params[:start]&.to_i || 0
    column_index= params[:order]['0'][:column]
    column_name = params[:columns][column_index][:data]
    order_dir = params[:order]['0'][:dir]
    search_value = params[:search][:value]

    products_query = Product.search_full_text(search_value)
                   .order("#{column_name} #{order_dir}")
    total_records = products_query.count
    products = products_query.search_full_text(search_value)
                   .order("#{column_name} #{order_dir}")
                   .limit(params[:length].to_i).offset(offset).map do |product|
      {
        title: product.title,
        description: product.description,
        country: product.country,
        price: product.price
      }
    end

    result = {
      draw: params[:draw].to_i,
      recordsTotal: Product.count,
      recordsFiltered: products.count,
      data: products
    }
    render json: result.to_json, status: 200
  end

end
