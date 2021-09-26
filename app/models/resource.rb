class Resource < ApplicationRecord
    has_many :likes, dependant: :destroy
end
