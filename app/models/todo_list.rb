class TodoList < ApplicationRecord
  belongs_to :user

  validates :title, :content, presence: true
  validates :lank, :star, :deadline_date, presence: true

  enum lanks: [:'D', :'C', :'B', :'A', :'S']
end