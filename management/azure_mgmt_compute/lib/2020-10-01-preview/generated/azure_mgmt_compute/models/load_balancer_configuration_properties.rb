# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_10_01_preview
  module Models
    #
    # Model object.
    #
    #
    class LoadBalancerConfigurationProperties

      include MsRestAzure

      # @return [Array<LoadBalancerFrontendIPConfiguration>] List of IP
      attr_accessor :frontend_ipconfigurations


      #
      # Mapper for LoadBalancerConfigurationProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LoadBalancerConfigurationProperties',
          type: {
            name: 'Composite',
            class_name: 'LoadBalancerConfigurationProperties',
            model_properties: {
              frontend_ipconfigurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'frontendIPConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LoadBalancerFrontendIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LoadBalancerFrontendIPConfiguration'
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