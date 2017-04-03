class CreateCalculates < ActiveRecord::Migration[5.0]
  def change
    create_table :calculates do |t|

      t.float  :a
      t.float  :b
      t.string :operator

      t.timestamps
    end
  end
end
