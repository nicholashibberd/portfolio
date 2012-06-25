class Message
  include Mongoid::Document
  field :name
  field :email
  field :phone
  field :message
end