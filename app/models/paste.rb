class Paste < ApplicationRecord
  validates :body, presence: true
  attr_accessor :expiration_range
  validates :expiration_range, inclusion: {in: ["never", "tenminutes", "onehour", "oneday", "oneweek",
                                                "twoweeks", "onemonth", "sixmonths", "oneyear"],
                                                message: "\"%{value}\" is not a valid expiration range"}
  before_save :set_self_destruct
  after_create :queue_job

  private
  def set_self_destruct
    unless (expiration_range.nil?)
      case expiration_range
      when "never"
        self.expiration_date = nil
      when "tenminutes"
        self.expiration_date = DateTime.now + 10.minutes
      when "onehour"
        self.expiration_date = DateTime.now + 1.hour
      when "oneday"
        self.expiration_date = DateTime.now + 1.day
      when "oneweek"
        self.expiration_date = DateTime.now + 1.week
      when "twoweeks"
        self.expiration_date = DateTime.now + 2.weeks
      when "onemonth"
        self.expiration_date = DateTime.now + 1.month
      when "sixmonths"
        self.expiration_date = DateTime.now + 6.months
      when "oneyear"
        self.expiration_date = DateTime.now + 1.year
      end
    end
  end

  def queue_job
    unless expiration_date.nil?
      PastesCleanupJob.set(wait_until: expiration_date).perform_later()
    end
  end
end
