SeoHelper.configure do |config|
  config.skip_blank               = false
  config.site_name 								= I18n.t('company')
  config.default_page_keywords    = I18n.t('keywords')
  config.site_name_formatter  		= lambda { |title, site_name|   "#{title} | #{site_name}" }
end