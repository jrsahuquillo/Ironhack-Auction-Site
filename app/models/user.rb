class User < ApplicationRecord
  has_many :products
  validates :name, presence: true
  validates :mail, presence: true, uniqueness: true
  validates_format_of :mail, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  def self.clean_old(date = 1.year.ago)
      where( 'created_at < ?', date ).destroy_all
    end
end
