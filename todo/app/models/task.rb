class Task < ActiveRecord::Base
  attr_accessor :name, :description, :priority, :urgency, :importance
end