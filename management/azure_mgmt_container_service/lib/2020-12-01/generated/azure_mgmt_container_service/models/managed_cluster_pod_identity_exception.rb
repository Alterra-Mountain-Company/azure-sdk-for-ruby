# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_12_01
  module Models
    #
    # Model object.
    #
    #
    class ManagedClusterPodIdentityException

      include MsRestAzure

      # @return [String] Name of the pod identity exception.
      attr_accessor :name

      # @return [String] Namespace of the pod identity exception.
      attr_accessor :namespace

      # @return [Hash{String => String}] Pod labels to match.
      attr_accessor :pod_labels


      #
      # Mapper for ManagedClusterPodIdentityException class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterPodIdentityException',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterPodIdentityException',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              namespace: {
                client_side_validation: true,
                required: true,
                serialized_name: 'namespace',
                type: {
                  name: 'String'
                }
              },
              pod_labels: {
                client_side_validation: true,
                required: true,
                serialized_name: 'podLabels',
                type: {
                  name: 'Dictionary',
                  value: {
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