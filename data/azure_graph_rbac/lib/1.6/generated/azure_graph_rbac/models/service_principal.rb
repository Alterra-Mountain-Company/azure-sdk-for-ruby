# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Active Directory service principal information.
    #
    class ServicePrincipal < DirectoryObject

      include MsRestAzure


      def initialize
        @objectType = "ServicePrincipal"
      end

      attr_accessor :objectType

      # @return [String] The display name of the service principal.
      attr_accessor :display_name

      # @return [String] The application ID.
      attr_accessor :app_id

      # @return [Array<String>] A collection of service principal names.
      attr_accessor :service_principal_names


      #
      # Mapper for ServicePrincipal class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServicePrincipal',
          type: {
            name: 'Composite',
            class_name: 'ServicePrincipal',
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
              object_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'objectId',
                type: {
                  name: 'String'
                }
              },
              deletion_timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'deletionTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              objectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              app_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'appId',
                type: {
                  name: 'String'
                }
              },
              service_principal_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'servicePrincipalNames',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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