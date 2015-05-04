json.array!(@monitor_class_mappings) do |monitor_class_mapping|
  json.extract! monitor_class_mapping, :id, :class_name, :sub_string
  json.url monitor_class_mapping_url(monitor_class_mapping, format: :json)
end
