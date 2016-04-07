class CreateCragislists < ActiveRecord::Migration
  def change
    create_table :cragislists do |t|

      t.timestamps null: false
    end
  end
end
