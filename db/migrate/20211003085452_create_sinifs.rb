class CreateSinifs < ActiveRecord::Migration[6.1]
  def change
    create_table :sinifs do |t|
      t.string :name

      t.timestamps
    end
  end
end
