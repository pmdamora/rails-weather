class AddTimezoneToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :timezone, :string
  end
end
