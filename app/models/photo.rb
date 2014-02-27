class Photo < ActiveRecord::Base
	has_attached_file :avatar, 
										:styles => { 
											:thumb => "1000x1000>" 
										}, 
										:default_url => "/images/:style/missing.png",
										:processors => [:cropper]
  
  validates_attachment 	:avatar,
  											:content_type => { 
  												:content_type => ["image/jpg", "image/gif", "image/png"] 
  											}
	attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
	
	# before_update :reprocess_avatar, :if => :cropping?
	
	def avatar_geometry(style = :original)
	  @geometry ||= {}
	  @geometry[style] ||= Paperclip::Geometry.from_file(avatar.path(style))
	end

  def cropping?
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end

  # private
	 #  def reprocess_avatar
	 #  	# return unless (cropping? && !processing)
	 #  	# self.processing = true
	 #   #  self.avatar.reprocess!
	 #   #  self.processing = false
	  	
	 #  end
end
