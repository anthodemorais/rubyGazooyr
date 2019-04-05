class Gazooy < ApplicationRecord
    belongs_to :user
    validates :text, length: { maximum: 142 }
end
