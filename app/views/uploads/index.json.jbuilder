json.array!(@uploads) do |upload|
  json.extract! upload, :id, :pdf_file_name, :pdf_content_type, :pdf_file_size, :pdf_updated_at
  json.url upload_url(upload, format: :json)
end
