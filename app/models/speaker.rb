class Speaker < ApplicationRecord
  has_many :meeting_speakers
  has_many :meetings, through: :meeting_speakers

  has_many :speakers, class_name: "Speaker",
                      foreign_key: "leader_id"

  belongs_to :leader, class_name: "Speaker"

  validates :first_name, :last_name, :email, presence: true

end
