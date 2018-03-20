class Movies < ActiveRecord::Migration[5.1]
  def change
    t.string :title, null: false
    t.string :release_year

  end
end
