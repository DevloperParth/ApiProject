json.array! @product do |product|
    json.id product.id
    json.product_name product.product_name
    json.product_price product.product_price
    json.Product_Description product.Product_Description
    json.created_at product.created_at
    json.updated_at product.updated_at
    

  end