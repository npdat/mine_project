class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :pdf_file_name
      t.string :pdf_content_type
      t.integer :pdf_file_size
      t.datetime :pdf_updated_at

      t.timestamps
    end
  end
end
