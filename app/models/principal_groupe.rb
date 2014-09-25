class PrincipalGroupe < ActiveRecord::Base
  has_many :users
  has_many :sous_groupes
end
