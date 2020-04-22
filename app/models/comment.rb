class Comment < ApplicationRecord
    validates_presence_of :body
    belongs_to :article 
    has_many :user
end
