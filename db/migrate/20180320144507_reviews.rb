class Reviews < ActiveRecord::Migration[5.1]
  def change
    t.string :review_text, null: false
  end
end
