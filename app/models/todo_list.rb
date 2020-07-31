class TodoList < ApplicationRecord
  belongs_to :user

  validates :title, :content, presence: true
  validates :rank, :star, :deadline_date, presence: true

  enum ranks: [:'D', :'C', :'B', :'A', :'S']
end