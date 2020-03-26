class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumbnail_image 

  # THis is good because it keeps all of the database logic in the model rather than making these calls in the controller
  def self.vue
    where(subtitle: 'Vue')
  end

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }

end
