if Rails.env == "development"
  Paperclip.options[:command_path] = '/opt/local/bin/'
else
  Paperclip.options[:command_path] = '/usr/bin/'
end