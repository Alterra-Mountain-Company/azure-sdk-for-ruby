# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The collection of volumes.
    #
    class VolumeList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<Volume>] The value.
      attr_accessor :value


      #
      # Mapper for VolumeList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VolumeList',
          type: {
            name: 'Composite',
            class_name: 'VolumeList',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VolumeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Volume'
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