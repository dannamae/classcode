class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|

      t.string :sectionname

      t.timestamps
    end
  end
end
