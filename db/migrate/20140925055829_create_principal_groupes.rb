class CreatePrincipalGroupes < ActiveRecord::Migration
  def change
    create_table :principal_groupes do |t|
      t.string :name

      t.timestamps
    end
  end
end
