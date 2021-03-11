# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_01_01_preview
  module Models
    #
    # A more specific scope used to identify the alerts to suppress.
    #
    class ScopeElement

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [String] The alert entity type to suppress by.
      attr_accessor :field


      #
      # Mapper for ScopeElement class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScopeElement',
          type: {
            name: 'Composite',
            class_name: 'ScopeElement',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              field: {
                client_side_validation: true,
                required: false,
                serialized_name: 'field',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end