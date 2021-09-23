class CreateTestings < ActiveRecord::Migration[6.1]
  def change
    create_table :testings do |t|
      t.datetime :registered_at, null: false, default: -> { 'NOW()' }

      t.timestamps
    end
  end
end
