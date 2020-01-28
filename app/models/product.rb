class Product < ApplicationRecord

  include PgSearch::Model
  multisearchable against: [:title, :description, :country, :price]

  pg_search_scope :search_full_text, against: {
      title: 'A',
      description: 'B',
      country: 'C',
      price: 'B'
  }, using: [:tsearch]

end
