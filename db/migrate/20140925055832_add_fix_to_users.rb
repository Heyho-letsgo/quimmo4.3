class AddFixToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :principal_groupe, index: true
  end
end
