class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :category
      t.string :description
      t.string :location
      t.string :value
      t.binary :picture

      t.timestamps
    end
  end
end
