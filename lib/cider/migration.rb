module Cider
  class Migration < ActiveRecord::Migration
    def self.up
      unless table_exists?(:ciders)
        create_table :ciders, id: false do |t|
          t.string :name, null: false
        end

        add_index :ciders, :name, unique: true
      end
    end

    def self.down
      drop_table(:ciders) if table_exists?(:ciders)
    end
  end
end