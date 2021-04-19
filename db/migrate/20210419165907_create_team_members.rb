
class CreateTeamMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :team_members do |table|
      table.string :name
      table.string :description
      table.string :image_url
      table.timestamps
    end
  end
end
