# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # MySQL migration request.
    #
    class MigrateMySqlRequest < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Connection string to the remote MySQL database.
      attr_accessor :connection_string

      # @return [MySqlMigrationType] The type of migration operation to be
      # done. Possible values include: 'LocalToRemote', 'RemoteToLocal'
      attr_accessor :migration_type


      #
      # Mapper for MigrateMySqlRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrateMySqlRequest',
          type: {
            name: 'Composite',
            class_name: 'MigrateMySqlRequest',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              system_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              connection_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.connectionString',
                type: {
                  name: 'String'
                }
              },
              migration_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.migrationType',
                type: {
                  name: 'Enum',
                  module: 'MySqlMigrationType'
                }
              }
            }
          }
        }
      end
    end
  end
end