# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_12_01
  module Models
    #
    # Describes a Virtual Machine Scale Set Extension.
    #
    class VirtualMachineScaleSetExtensionUpdate < SubResourceReadOnly

      include MsRestAzure

      # @return [String] The name of the extension.
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return [String] If a value is provided and is different from the
      # previous value, the extension handler will be forced to update even if
      # the extension configuration has not changed.
      attr_accessor :force_update_tag

      # @return [String] The name of the extension handler publisher.
      attr_accessor :publisher

      # @return [String] Specifies the type of the extension; an example is
      # "CustomScriptExtension".
      attr_accessor :type1

      # @return [String] Specifies the version of the script handler.
      attr_accessor :type_handler_version

      # @return [Boolean] Indicates whether the extension should use a newer
      # minor version if one is available at deployment time. Once deployed,
      # however, the extension will not upgrade minor versions unless
      # redeployed, even with this property set to true.
      attr_accessor :auto_upgrade_minor_version

      # @return [Boolean] Indicates whether the extension should be
      # automatically upgraded by the platform if there is a newer version of
      # the extension available.
      attr_accessor :enable_automatic_upgrade

      # @return Json formatted public settings for the extension.
      attr_accessor :settings

      # @return The extension can contain either protectedSettings or
      # protectedSettingsFromKeyVault or no protected settings at all.
      attr_accessor :protected_settings

      # @return [String] The provisioning state, which only appears in the
      # response.
      attr_accessor :provisioning_state

      # @return [Array<String>] Collection of extension names after which this
      # extension needs to be provisioned.
      attr_accessor :provision_after_extensions


      #
      # Mapper for VirtualMachineScaleSetExtensionUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetExtensionUpdate',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetExtensionUpdate',
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
              force_update_tag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.forceUpdateTag',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publisher',
                type: {
                  name: 'String'
                }
              },
              type1: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'String'
                }
              },
              type_handler_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.typeHandlerVersion',
                type: {
                  name: 'String'
                }
              },
              auto_upgrade_minor_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.autoUpgradeMinorVersion',
                type: {
                  name: 'Boolean'
                }
              },
              enable_automatic_upgrade: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableAutomaticUpgrade',
                type: {
                  name: 'Boolean'
                }
              },
              settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.settings',
                type: {
                  name: 'Object'
                }
              },
              protected_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.protectedSettings',
                type: {
                  name: 'Object'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              provision_after_extensions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisionAfterExtensions',
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