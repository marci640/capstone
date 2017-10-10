class RemoveTimestamps < ActiveRecord::Migration[5.1]
  change_table :rates do |t|
    t.remove :created_at
    t.remove :updated_at
  end
end
