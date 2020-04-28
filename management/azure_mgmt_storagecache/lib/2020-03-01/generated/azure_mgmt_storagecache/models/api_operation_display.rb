# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2020_03_01
  module Models
    #
    # The object that represents the operation.
    #
    class ApiOperationDisplay

      include MsRestAzure

      # @return [String] Operation type: Read, write, delete, etc.
      attr_accessor :operation

      # @return [String] Service provider: Microsoft.StorageCache
      attr_accessor :provider

      # @return [String] Resource on which the operation is performed: Cache,
      # etc.
      attr_accessor :resource


      #
      # Mapper for ApiOperationDisplay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiOperation_display',
          type: {
            name: 'Composite',
            class_name: 'ApiOperationDisplay',
            model_properties: {
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resource',
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
