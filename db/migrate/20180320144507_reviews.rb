class Reviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :review_text, null: false
    end
  end
end
