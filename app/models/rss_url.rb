class RssUrl < ApplicationRecord
    validates :url, presence: true, length: {minimum: 10, maximum: 255}
end
