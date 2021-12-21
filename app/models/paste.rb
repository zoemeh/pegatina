class Paste < ApplicationRecord
  validates :body, presence: true
end
