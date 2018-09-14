Spree::Taxonomy.class_eval do
  belongs_to :store, class_name: 'Spree::Store'
end
