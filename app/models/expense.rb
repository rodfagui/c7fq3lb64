class Expense < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  # Metodo para la busqueda de productos por titulo o cuerpo de la pregunta
  def self.search(user_id, concept, category_id)
    if category_id != 0
      where("user_id = ? AND concept like ? AND category_id = ?", "#{user_id}", "%#{concept}%", "#{category_id}") 
    else
      where("user_id = ? AND concept like ? ", "#{user_id}", "%#{concept}%") 
    end
  end
end
