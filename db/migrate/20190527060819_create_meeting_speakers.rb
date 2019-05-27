class CreateMeetingSpeakers < ActiveRecord::Migration[5.2]
  def change
    create_table :meeting_speakers do |t|
      t.integer :meeting_id
      t.integer :speaker_id

      t.timestamps
    end
  end
end
