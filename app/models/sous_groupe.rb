class SousGroupe < ActiveRecord::Base
  belongs_to :principal_groupe
  has_many :users
end
