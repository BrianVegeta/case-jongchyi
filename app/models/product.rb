class Product < ActiveRecord::Base
	belongs_to :photo
	def self.cates
		{
			1 => I18n.t('product.category.watches'),
			5 => I18n.t('product.category.precious_metals'),
			9 => I18n.t('product.category.photoelectric'),
			13 => I18n.t('product.category.polymer_materials'),
			17 => I18n.t('product.category.chassis_aluminum'),
			21 => I18n.t('product.category.exclusive_custom')
		}
	end
	def self.sub_cates
		{
			1 => {2 => 'A', 3 => 'B', 4 => 'C'},
			5 => {6 => 'A', 7 => 'B', 8 => 'C'},
			9 => {10 => 'A', 11 => 'B', 12 => 'C'},
			13 => {14 => 'A', 15 => 'B', 16 => 'C'},
			17 => {18 => 'A', 19 => 'B', 20 => 'C'},
			21 => {22 => 'A', 23 => 'B', 24 => 'C'}
		}
	end

	def self.sub_cates_keys
		keys = []
		Product.sub_cates.each_pair do |k, v|
			v.each_pair do |k, v|
				keys << k
			end
		end
		keys
	end

	def self.get_cate_name(id)
		name = ''
		Product.sub_cates.each_pair do |k, v|
			unless v[id].nil?
				name = Product.cates[k] + ' / ' + v[id]
				break
			end
		end
		name
	end

	def trans_title
		if I18n.locale != :'zh-TW' && send(locale_prefix('title')).present?
			send(locale_prefix('title'))
		else
			title
		end
	end

	def trans_content
		if I18n.locale != :'zh-TW' && send(locale_prefix('content')).present?
			send(locale_prefix('content'))
		else
			content
		end
	end

	validates :title,  :presence => true, :length => {:maximum => 254}
	validates :content,  :presence => true
	validates :category,  :presence => true, inclusion: { in: Product.sub_cates_keys}

	before_create :add_photo

	private
		def add_photo
			if self.photo.nil?
				photo = Photo.new
				photo.save
				self.photo = photo
			end
		end

		def locale_prefix(column_name)
			I18n.locale.to_s.downcase.gsub('-', '_') + '_' + column_name
		end
end
