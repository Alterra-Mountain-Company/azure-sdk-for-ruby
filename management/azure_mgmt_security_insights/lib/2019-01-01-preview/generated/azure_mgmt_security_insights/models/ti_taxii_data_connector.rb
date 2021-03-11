# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Data connector to pull Threat intelligence data from TAXII 2.0/2.1 server
    #
    class TiTaxiiDataConnector < DataConnector

      include MsRestAzure


      def initialize
        @kind = "ThreatIntelligenceTaxii"
      end

      attr_accessor :kind

      # @return [String] The tenant id to connect to, and get the data from.
      attr_accessor :tenant_id

      # @return [String] The workspace id.
      attr_accessor :workspace_id

      # @return [String] The friendly name for the TAXII server.
      attr_accessor :friendly_name

      # @return [String] The API root for the TAXII server.
      attr_accessor :taxii_server

      # @return [String] The collection id of the TAXII server.
      attr_accessor :collection_id

      # @return [String] The userName for the TAXII server.
      attr_accessor :user_name

      # @return [String] The password for the TAXII server.
      attr_accessor :password

      # @return [TiTaxiiDataConnectorDataTypes] The available data types for
      # Threat Intelligence TAXII data connector.
      attr_accessor :data_types


      #
      # Mapper for TiTaxiiDataConnector class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ThreatIntelligenceTaxii',
          type: {
            name: 'Composite',
            class_name: 'TiTaxiiDataConnector',
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
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tenantId',
                type: {
                  name: 'String'
                }
              },
              workspace_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.workspaceId',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.friendlyName',
                type: {
                  name: 'String'
                }
              },
              taxii_server: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.taxiiServer',
                type: {
                  name: 'String'
                }
              },
              collection_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.collectionId',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userName',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.password',
                type: {
                  name: 'String'
                }
              },
              data_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataTypes',
                type: {
                  name: 'Composite',
                  class_name: 'TiTaxiiDataConnectorDataTypes'
                }
              }
            }
          }
        }
      end
    end
  end
end