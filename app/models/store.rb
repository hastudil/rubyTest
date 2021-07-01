class Store < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :street, presence: true
    validates :number, presence: true
    validates :zip_code, presence: true
    validates :city, presence: true
    validates :country, presence: true

    has_many :store_products
    # has_many :products, :through => :store_products
    has_many :products, through: :store_products
    # has_many :products

    after_create :save_products
    after_update :update_products

    def products=(value)
        @products = value
    end

    def save_products
        if @products != nil
            @products.each do |id|
                StoreProduct.create(store_id: self.id, product_id: id)
            end
        end
    end

    def update_products
        StoreProduct.destroy_by(store_id: self.id)#delete_all/destroy_all

        if @products != nil
            @products.each do |id|
                StoreProduct.create(store_id: self.id, product_id: id)
            end
        end
    end
end