require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { LCD_screen_size: @product.LCD_screen_size, brand: @product.brand, camera_type: @product.camera_type, category: @product.category, colour: @product.colour, id: @product.id, megapixel_range: @product.megapixel_range, model_code: @product.model_code, model_description: @product.model_description, model_text: @product.model_text, optical_zoom: @product.optical_zoom, price: @product.price, product_image: @product.product_image, retail_price: @product.retail_price }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product, product: { LCD_screen_size: @product.LCD_screen_size, brand: @product.brand, camera_type: @product.camera_type, category: @product.category, colour: @product.colour, id: @product.id, megapixel_range: @product.megapixel_range, model_code: @product.model_code, model_description: @product.model_description, model_text: @product.model_text, optical_zoom: @product.optical_zoom, price: @product.price, product_image: @product.product_image, retail_price: @product.retail_price }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
