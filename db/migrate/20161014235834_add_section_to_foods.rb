class AddSectionToFoods < ActiveRecord::Migration[5.0]
  def change
    add_reference :foods, :section, foreign_key: true, index: true, dependent: :destroy
  end
end
