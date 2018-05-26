class Career < ApplicationRecord
    has_many :student_has_careers
    has_many :students, through: :StudentCareer
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    after_validation :capitalize, on: [ :create, :update ]
    
    private
    	def capitalize
    		self.name = name.capitalize
    	end
end
