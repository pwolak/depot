class StoreController < ApplicationController
  def index
   @products = Product.find_products_for_sale
   @cart = find_cart
  end

  def add_to_cart
   product = Product.find(params[:id])
   @cart = find_cart
   @current_item = @cart.add_product(product)
   respond_to do |format|
    format.js if request.xhr?
    format.html {redirect_to_index}
   end
  rescue ActiveRecord::RecordNotFound
   logger.error("Attempt to access invalid product #{params[:id]}" )
   redirect_to_index("Invalid product" )
  end

  def empty_cart
   session[:cart] = nil
   redirect_to_index
  end

private

 def redirect_to_index(msg = nil)
  flash[:notice] = msg if msg
  redirect_to :action => 'index'
 end

 def find_cart
  session[:cart] ||= Cart.new
 end

end
