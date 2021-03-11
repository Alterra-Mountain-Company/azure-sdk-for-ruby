# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2021_01_15
  module Models
    #
    # Connection State of the Private Endpoint Connection.
    #
    class PrivateLinkServiceConnectionStateProperty

      include MsRestAzure

      # @return [String] The private link service connection status.
      attr_accessor :status

      # @return [String] The private link service connection description.
      attr_accessor :description

      # @return [String] Any action that is required beyond basic workflow
      # (approve/ reject/ disconnect)
      attr_accessor :actions_required


      #
      # Mapper for PrivateLinkServiceConnectionStateProperty class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateLinkServiceConnectionStateProperty',
          type: {
            name: 'Composite',
            class_name: 'PrivateLinkServiceConnectionStateProperty',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              actions_required: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'actionsRequired',
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