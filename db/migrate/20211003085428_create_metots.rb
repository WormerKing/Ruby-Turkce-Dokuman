class CreateMetots < ActiveRecord::Migration[6.1]
  def change
    create_table :metots do |t|
      t.string :name
      t.text :desc
      t.text :example

      t.timestamps
    end
  end
end
