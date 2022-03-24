class TodoItem < ApplicationRecord
  belongs_to :todo_list

  scope :completo, -> do
    where(completo: true)
  end
  
end
