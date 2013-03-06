class AddClassYearToUsers < ActiveRecord::Migration
  def change
    add_column :users, :class_year, :integer
  end
end
