class Url < ActiveRecord::Base
  validates :orig, uniqueness: true
  validates :orig, format: { with: /\A#{URI::regexp(%w(http https))}\z/ }
end
