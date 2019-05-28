class ChangeTimeToDatetime < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetings, :time, :string
    add_column :meetings, :time, :datetime     
  end
end
