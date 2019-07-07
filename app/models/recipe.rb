class Recipe < ActiveRecord::Base
  has_many :ingredients

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do |i, ingredient_attribute|
      self.ingredients.build(ingredient_attribute)
    end
  end
end
