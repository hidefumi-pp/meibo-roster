class CreateRosters < ActiveRecord::Migration[5.2]
  def change
    create_table :rosters do |t|
      t.string :last
      t.string :first
      t.string :tel

      t.timestamps
    end
  end
end
