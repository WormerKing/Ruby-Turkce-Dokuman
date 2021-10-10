class AddSinifToMetots < ActiveRecord::Migration[6.1]
  def change
    add_reference :metots, :sinif, null: false, foreign_key: true
  end
end
