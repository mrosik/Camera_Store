class Product < ActiveRecord::Base
  attr_accessible :LCD_screen_size, :brand, :camera_type, :category, :colour, :id, :megapixel_range, :model_code, :model_description, :model_text, :optical_zoom, :price, :product_image, :retail_price
end
