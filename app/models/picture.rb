class Picture < ActiveRecord::Base
	has_attached_file :image, styles: {large: "800x600", medium: "300x300", thumb: "120X120"}

	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	
	validates :title, :presence => true,
					  :length => {:maximum => 50}
	validates :cycle, :presence => true,
					  :length => {:maximum => 50}
	validates :price, :presence => true	

	
	scope :sorted, lambda {order("pictures.cycle ASC")}
	scope :search, lambda {|query|
		where(["title LIKE ?", "%#{query }%"])
	}

	belongs_to :user


	
end

	