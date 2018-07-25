require 'json_api_client'

module ComplianceClient
  class Base < JsonApiClient::Resource
    def self.find(*args)
      super(*args)[0]
    end

    def self.access_has_one(*args)
      instance_eval do
        args.each do |arg|
          define_method(arg) do
            self.relationships.send(arg.to_sym)
          end
          define_method("#{arg}=") do |val|
            self.relationships.send("#{arg.to_sym}=", val)
          end
        end
      end
    end

    def self.access_belongs_to(arg, options = {})
      instance_eval do
        belongs_to arg, options
        define_method(arg) do
          #self.relationships.send(arg.to_sym)
        end
        define_method("#{arg}=") do |val|
          if val.respond_to? :id
            self.send("#{arg}_id=", val.id)
          end
          self.send("#{arg}_type=", val.type)
          self.relationships.send("#{arg.to_sym}=", val)
        end
      end
    end

    def self.access_has_many(*args)
      instance_eval do
        args.each do |arg|
          define_method(arg) do
            instance_variable_get("@#{arg}") ||
              instance_variable_set("@#{arg}", RelationshipManager.new(self, arg))
          end
        end
      end
    end

    def self.access_attributes(*args)
      instance_eval do
        args.each do |arg|
          define_method(arg) do
            self[arg.to_sym]
          end
          define_method("#{arg}=") do |val|
            self[arg.to_sym] = val
          end
        end
      end
    end
  end
end
