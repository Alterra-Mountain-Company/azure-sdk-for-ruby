# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_07_01_preview
  module Models
    #
    # A list of vulnerability assessment scan results.
    #
    class ScanResults

      include MsRestAzure

      # @return [Array<ScanResult>] List of vulnerability assessment scan
      # results.
      attr_accessor :value


      #
      # Mapper for ScanResults class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScanResults',
          type: {
            name: 'Composite',
            class_name: 'ScanResults',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ScanResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ScanResult'
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