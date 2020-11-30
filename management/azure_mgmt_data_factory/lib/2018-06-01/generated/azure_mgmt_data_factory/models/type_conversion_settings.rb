# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Type conversion settings
    #
    class TypeConversionSettings

      include MsRestAzure

      # @return Whether to allow data truncation when converting the data.
      # Type: boolean (or Expression with resultType boolean).
      attr_accessor :allow_data_truncation

      # @return Whether to treat boolean values as numbers. Type: boolean (or
      # Expression with resultType boolean).
      attr_accessor :treat_boolean_as_number

      # @return The format for DateTime values. Type: string (or Expression
      # with resultType string).
      attr_accessor :date_time_format

      # @return The format for DateTimeOffset values. Type: string (or
      # Expression with resultType string).
      attr_accessor :date_time_offset_format

      # @return The format for TimeSpan values. Type: string (or Expression
      # with resultType string).
      attr_accessor :time_span_format

      # @return The culture used to convert data from/to string. Type: string
      # (or Expression with resultType string).
      attr_accessor :culture


      #
      # Mapper for TypeConversionSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TypeConversionSettings',
          type: {
            name: 'Composite',
            class_name: 'TypeConversionSettings',
            model_properties: {
              allow_data_truncation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowDataTruncation',
                type: {
                  name: 'Object'
                }
              },
              treat_boolean_as_number: {
                client_side_validation: true,
                required: false,
                serialized_name: 'treatBooleanAsNumber',
                type: {
                  name: 'Object'
                }
              },
              date_time_format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dateTimeFormat',
                type: {
                  name: 'Object'
                }
              },
              date_time_offset_format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dateTimeOffsetFormat',
                type: {
                  name: 'Object'
                }
              },
              time_span_format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeSpanFormat',
                type: {
                  name: 'Object'
                }
              },
              culture: {
                client_side_validation: true,
                required: false,
                serialized_name: 'culture',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
