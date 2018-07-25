require 'active_support/core_ext/module/delegation'

module ComplianceClient
  class RelationshipManager
    attr_accessor :object, :attribute, :values
    def initialize(object, attribute)
      self.object = object
      self.attribute = attribute
      self.values = []
    end

    def push(item)
      values.push(item)
      object.relationships.send("#{attribute}=", values)
    end

    delegate :each, to: :values
  end
end
