class Phone < ActiveRecord::Base

  validates :screen_size, presence: true

end
