
path = File.join(File.dirname(__FILE__), "./products.json")
records = JSON.parse(File.read(path))
records.each do |record|
  Product.create!(record)
end
