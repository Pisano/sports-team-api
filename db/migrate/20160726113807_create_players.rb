class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.references :team, foreign_key: true, index: true
      t.string :name

      t.timestamps
    end
  end
end
