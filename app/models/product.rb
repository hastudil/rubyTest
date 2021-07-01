class Product < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :color, presence: true
    # validates :category, presence: true
    validates :size, presence: true
    validates :price, presence: true
    # validates :size, numericality: { message: "%{value} seems wrong" }

    # has_many :stores
    belongs_to :category

    has_many :store_products
    # has_many :stores, :through => :store_product
    has_many :stores, through: :store_products

    after_create :save_stores
    after_update :update_stores

    def category_name
        category.try(:name)
    end

    def category_name=(name)
        self.category = Category.find_or_create_by_name(name) if name.present?
    end

    def stores=(value)
        @stores = value
    end

    def save_stores
        if @stores != nil
            @stores.each do |id|
                StoreProduct.create(store_id: id, product_id: self.id)
            end
        end
    end

    def update_stores
        StoreProduct.destroy_by(product_id: self.id)#delete_all/destroy_all
        if @stores != nil
            @stores.each do |id|
                StoreProduct.create(store_id: id, product_id: self.id)
            end
        end
    end
end