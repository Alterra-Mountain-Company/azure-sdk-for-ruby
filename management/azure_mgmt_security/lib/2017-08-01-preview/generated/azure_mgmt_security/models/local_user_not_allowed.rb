# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2017_08_01_preview
  module Models
    #
    # Login by a local user that isn't allowed. Allow list consists of login
    # names to allow.
    #
    class LocalUserNotAllowed < AllowlistCustomAlertRule

      include MsRestAzure


      def initialize
        @ruleType = "LocalUserNotAllowed"
      end

      attr_accessor :ruleType


      #
      # Mapper for LocalUserNotAllowed class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LocalUserNotAllowed',
          type: {
            name: 'Composite',
            class_name: 'LocalUserNotAllowed',
            model_properties: {
              display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              is_enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'isEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              ruleType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleType',
                type: {
                  name: 'String'
                }
              },
              value_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'valueType',
                type: {
                  name: 'String'
                }
              },
              allowlist_values: {
                client_side_validation: true,
                required: true,
                serialized_name: 'allowlistValues',
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