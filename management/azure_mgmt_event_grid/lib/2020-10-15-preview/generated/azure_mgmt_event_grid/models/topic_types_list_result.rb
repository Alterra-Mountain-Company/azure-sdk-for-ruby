# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_10_15_preview
  module Models
    #
    # Result of the List Topic Types operation
    #
    class TopicTypesListResult

      include MsRestAzure

      # @return [Array<TopicTypeInfo>] A collection of topic types
      attr_accessor :value


      #
      # Mapper for TopicTypesListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TopicTypesListResult',
          type: {
            name: 'Composite',
            class_name: 'TopicTypesListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TopicTypeInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TopicTypeInfo'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end