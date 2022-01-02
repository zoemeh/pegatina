class PastesCleanupJob < ApplicationJob
  queue_as :default

  def perform(*args)
    pastes = Paste.find_by_sql("SELECT * FROM pastes WHERE expiration_date IS NOT NULL AND expiration_date < DATETIME()")
    pastes.each do |x|
      x.delete
    end
  end
end
