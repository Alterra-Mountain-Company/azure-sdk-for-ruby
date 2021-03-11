# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2020_01_01
  module Models
    #
    # The available data types for MCAS (Microsoft Cloud App Security) data
    # connector.
    #
    class MCASDataConnectorDataTypes < AlertsDataTypeOfDataConnector

      include MsRestAzure

      # @return [DataConnectorDataTypeCommon] Discovery log data type
      # connection.
      attr_accessor :discovery_logs


      #
      # Mapper for MCASDataConnectorDataTypes class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MCASDataConnectorDataTypes',
          type: {
            name: 'Composite',
            class_name: 'MCASDataConnectorDataTypes',
            model_properties: {
              alerts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'alerts',
                type: {
                  name: 'Composite',
                  class_name: 'DataConnectorDataTypeCommon'
                }
              },
              discovery_logs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'discoveryLogs',
                type: {
                  name: 'Composite',
                  class_name: 'DataConnectorDataTypeCommon'
                }
              }
            }
          }
        }
      end
    end
  end
end