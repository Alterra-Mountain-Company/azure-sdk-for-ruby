# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2019_12_01
  module Models
    #
    # The init container definition.
    #
    class InitContainerDefinition

      include MsRestAzure

      # @return [String] The name for the init container.
      attr_accessor :name

      # @return [String] The image of the init container.
      attr_accessor :image

      # @return [Array<String>] The command to execute within the init
      # container in exec form.
      attr_accessor :command

      # @return [Array<EnvironmentVariable>] The environment variables to set
      # in the init container.
      attr_accessor :environment_variables

      # @return [InitContainerPropertiesDefinitionInstanceView] The instance
      # view of the init container. Only valid in response.
      attr_accessor :instance_view

      # @return [Array<VolumeMount>] The volume mounts available to the init
      # container.
      attr_accessor :volume_mounts


      #
      # Mapper for InitContainerDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InitContainerDefinition',
          type: {
            name: 'Composite',
            class_name: 'InitContainerDefinition',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              image: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.image',
                type: {
                  name: 'String'
                }
              },
              command: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.command',
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
              },
              environment_variables: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.environmentVariables',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EnvironmentVariableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EnvironmentVariable'
                      }
                  }
                }
              },
              instance_view: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.instanceView',
                type: {
                  name: 'Composite',
                  class_name: 'InitContainerPropertiesDefinitionInstanceView'
                }
              },
              volume_mounts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.volumeMounts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VolumeMountElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VolumeMount'
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