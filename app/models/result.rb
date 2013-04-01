class PostgresRecord::Base < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :postgres
end

class Result < ActiveRecord::Base
  belongs_to :answer
  belongs_to :question
  belongs_to :team
  attr_accessible :ok, :answer_id, :question_id, :team_id
end
