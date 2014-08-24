class Product < ActiveRecord::Base
	# Pagination
  paginates_per 10

  M_A = I18n.t('product.sub_category.scd') + "&nbsp;<small>Natural, HPHT, CVD</small>"
  M_B = I18n.t('product.sub_category.spd') + "&nbsp;<small>PCD</small>"
  M_C = I18n.t('product.sub_category.cbn') + "&nbsp;<small>PCBN</small>"
  M_D = I18n.t('product.sub_category.wc') + "&nbsp;<small>Carbide</small>"

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
			1 => {
				2 => Product::M_A, 
				3 => Product::M_B, 
				4 => Product::M_C, 
				25 => Product::M_D
			},
			5 => {
				6 => Product::M_A, 
				7 => Product::M_B, 
				8 => Product::M_C, 
				26 => Product::M_D
			},
			9 => {
				10 => Product::M_A, 
				11 => Product::M_B, 
				12 => Product::M_C, 
				27 => Product::M_D
			},
			13 => {
				14 => Product::M_A, 
				15 => Product::M_B, 
				16 => Product::M_C, 
				28 => Product::M_D
			},
			17 => {
				18 => Product::M_A, 
				19 => Product::M_B, 
				20 => Product::M_C, 
				29 => Product::M_D
			},
			21 => {
				22 => Product::M_A, 
				23 => Product::M_B, 
				24 => Product::M_C, 
				30 => Product::M_D
			}
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
				name = Product.cates[k] + ' / ' + v[id].split('&nbsp;').first
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
