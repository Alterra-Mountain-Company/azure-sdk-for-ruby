# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_01_01_preview
  module Models
    #
    # The connector setting
    #
    class ConnectorSetting < Resource

      include MsRestAzure

      # @return [HybridComputeSettingsProperties] Settings for hybrid compute
      # management. These settings are relevant only for Arc autoProvision
      # (Hybrid Compute).
      attr_accessor :hybrid_compute_settings

      # @return [AuthenticationDetailsProperties] Settings for authentication
      # management, these settings are relevant only for the cloud connector.
      attr_accessor :authentication_details


      #
      # Mapper for ConnectorSetting class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectorSetting',
          type: {
            name: 'Composite',
            class_name: 'ConnectorSetting',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              hybrid_compute_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hybridComputeSettings',
                type: {
                  name: 'Composite',
                  class_name: 'HybridComputeSettingsProperties'
                }
              },
              authentication_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.authenticationDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'authenticationType',
                  uber_parent: 'AuthenticationDetailsProperties',
                  class_name: 'AuthenticationDetailsProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end