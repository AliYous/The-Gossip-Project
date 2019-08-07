class PrivateMessage < ApplicationRecord
    belongs_to :sender
    has_many :recipients
end
