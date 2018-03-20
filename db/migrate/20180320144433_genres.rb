class Genres < ActiveRecord::Migration[5.1]
  def change
    t.string :name, null:false
    t.string :description
  end
end
