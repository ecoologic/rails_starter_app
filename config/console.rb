U = User

def self.h
  ApplicationController.helpers
end

def self.me
  User.first
end

def self.exceptions
  ObjectSpace.each_object(Class).select { |k| k < StandardError }.map(&:to_s).sort
end

def self.base_exceptions
  exceptions.select { |e| !e.to_s.include?('::') }
end

# map_ids - A table with ID and the eval'd code you pass
# mids(User.all, :email, :created_at)
def self.mids(items, *fields)
  items.map do |item|
    columns = fields.map { |f| eval "item.#{f}" }.presence || [item.to_s]
    [item.id, *columns]
  end
end

# map_children - A table with the data of the children
# mchs(User.all, 'tasks', 'name', 'description')
# => | User ID | Task Name | Task Description |
def self.mchs(items, has_many, *props)
  puts "Item ID | #{props.join(' | ')}"
  props = props.presence || %i[id name]
  items.flat_map do |item|
    item.send(has_many).map do |a|
      p [item.id] + props.map { |f| a.send(f) }
    end
  end
end
