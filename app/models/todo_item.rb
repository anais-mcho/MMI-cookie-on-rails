class TodoItem < ApplicationRecord
  belongs_to :recipes_list

  scope :completed, -> do
  where(completed: true)
  end
end
