class CreateBlabs < ActiveRecord::Migration
  def change
    create_table :blabs do |t|
      t.belongs_to :user, index: true
      t.string :content, null: false
      t.timestamps
    end
  end
end
