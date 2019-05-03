# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_04_01
  module Models
    #
    # An object that defines the Lifecycle rule. Each definition is made up
    # with a filters set and an actions set.
    #
    class ManagementPolicyDefinition

      include MsRestAzure

      # @return [ManagementPolicyAction] An object that defines the action set.
      attr_accessor :actions

      # @return [ManagementPolicyFilter] An object that defines the filter set.
      attr_accessor :filters


      #
      # Mapper for ManagementPolicyDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagementPolicyDefinition',
          type: {
            name: 'Composite',
            class_name: 'ManagementPolicyDefinition',
            model_properties: {
              actions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'actions',
                type: {
                  name: 'Composite',
                  class_name: 'ManagementPolicyAction'
                }
              },
              filters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'filters',
                type: {
                  name: 'Composite',
                  class_name: 'ManagementPolicyFilter'
                }
              }
            }
          }
        }
      end
    end
  end
end
