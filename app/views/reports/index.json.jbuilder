json.array!(@reports) do |report|
  json.extract! report, :id, :report_name, :path, :user_id
  json.url report_url(report, format: :json)
end
