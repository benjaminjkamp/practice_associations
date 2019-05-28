class AddLeaderIdToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_reference :speakers, :leader, index: true
  end
end
