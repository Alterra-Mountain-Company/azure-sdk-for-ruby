# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_07_01_preview
  module Models
    #
    # Routes that matched
    #
    class MatchedRoute

      include MsRestAzure

      # @return [RouteProperties] Properties of routes that matched
      attr_accessor :properties


      #
      # Mapper for MatchedRoute class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MatchedRoute',
          type: {
            name: 'Composite',
            class_name: 'MatchedRoute',
            model_properties: {
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'RouteProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end