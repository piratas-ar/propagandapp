require 'uri'
class Propaganda < ApplicationRecord
  validates :titulo, presence: true
  validate :valid_url?
  def valid_url?
    return true if self.url.blank?
    begin
      uri = URI.parse(self.url)
      if uri.host.nil?
        errors.add(:url, "invalida")
      end
    rescue URI::InvalidURIError
      errors.add(:url, "invalida")
      false
    end
  end
end
