class Meeting < ApplicationRecord
  has_many :meeting_speakers
  has_many :speakers, through: :meeting_speakers

  validates :title, :agenda, :location, :time, presence: true
  validates :time, numericality: { greater_than: Time.now }
  validate :future_meeting_time


  def future_meeting_time
    if time.present? && time < Time.now
      errors.add(:time, "Meeting time must be in the future")
    end
    
  end
  
end