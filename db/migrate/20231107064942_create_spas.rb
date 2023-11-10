class CreateSpas < ActiveRecord::Migration[7.0]
  def change
    create_table :spas do |t|

      t.timestamps

      t.string     :name               , null: false
      t.text       :detail             , null: false
      t.text       :facility           , null: false
      t.text       :business_hours     , null: false
      t.text       :access             , null: false
      
    end
  end
end
