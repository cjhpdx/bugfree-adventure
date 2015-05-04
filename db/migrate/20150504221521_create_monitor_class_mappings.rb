class CreateMonitorClassMappings < ActiveRecord::Migration
  def change
    create_table :monitor_class_mappings do |t|
      t.string :class_name
      t.string :sub_string

      t.timestamps null: false
    end
  end
end
