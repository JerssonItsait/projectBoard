class PostgresRecord::Base < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :postgres
end

class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :results

  attr_accessible :answer, :letter, :question_id
end
