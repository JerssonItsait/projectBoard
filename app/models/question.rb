class PostgresRecord::Base < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :postgres
end

class Question < ActiveRecord::Base
  belongs_to :category
  has_many :answers
  has_many :results
  attr_accessible :description, :letter, :score, :category_id
end
