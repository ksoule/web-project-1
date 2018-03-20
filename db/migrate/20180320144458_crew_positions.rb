class CrewPositions < ActiveRecord::Migration[5.1]
  def change
    create_table :crew_positions do |t|
      t.string :position_title
    end
  end
end
