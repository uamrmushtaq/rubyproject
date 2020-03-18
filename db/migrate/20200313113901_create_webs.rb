class CreateWebs < ActiveRecord::Migration[6.0]
  def change
    create_table :webs do |t|
      t.string :name
      t.string :element

      t.timestamps
    end
  end
end
