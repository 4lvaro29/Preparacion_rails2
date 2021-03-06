class Product < ApplicationRecord
  belongs_to :category
  validates :price, presence: true
  scope :all_premium, -> {where(premium: true)}
  scope :last_n, ->(cant) {limit(cant)}
  after_destroy :last_product

  def last_product
    Category.all.each do |category|
     if category.products.empty?
      category.destroy
     end
    end
  end

  def precio_final
    dis = self.category.discount
    pric = self.price

    descuento = (pric * dis.to_f)/100
    return pric - descuento

  end
 # before_save :premium_default

  #def premium_default
   # if self.premium.nil?
    #  self.premium = false
  #end


  #end
end