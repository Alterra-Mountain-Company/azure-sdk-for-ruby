# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hanaonazure::Mgmt::V2017_11_03_preview
  module Models
    #
    # HANA instance info on Azure (ARM properties and HANA properties)
    #
    class HanaInstance < Resource

      include MsRestAzure

      # @return [HardwareProfile] Specifies the hardware settings for the HANA
      # instance.
      attr_accessor :hardware_profile

      # @return [StorageProfile] Specifies the storage settings for the HANA
      # instance disks.
      attr_accessor :storage_profile

      # @return [OSProfile] Specifies the operating system settings for the
      # HANA instance.
      attr_accessor :os_profile

      # @return [NetworkProfile] Specifies the network settings for the HANA
      # instance.
      attr_accessor :network_profile

      # @return [String] Specifies the HANA instance unique ID.
      attr_accessor :hana_instance_id

      # @return [HanaInstancePowerStateEnum] Resource power state. Possible
      # values include: 'starting', 'started', 'stopping', 'stopped',
      # 'restarting', 'unknown'
      attr_accessor :power_state

      # @return [String] Resource proximity placement group
      attr_accessor :proximity_placement_group

      # @return [String] Hardware revision of a HANA instance
      attr_accessor :hw_revision


      #
      # Mapper for HanaInstance class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HanaInstance',
          type: {
            name: 'Composite',
            class_name: 'HanaInstance',
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
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              hardware_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hardwareProfile',
                type: {
                  name: 'Composite',
                  class_name: 'HardwareProfile'
                }
              },
              storage_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageProfile',
                type: {
                  name: 'Composite',
                  class_name: 'StorageProfile'
                }
              },
              os_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.osProfile',
                type: {
                  name: 'Composite',
                  class_name: 'OSProfile'
                }
              },
              network_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.networkProfile',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkProfile'
                }
              },
              hana_instance_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.hanaInstanceId',
                type: {
                  name: 'String'
                }
              },
              power_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.powerState',
                type: {
                  name: 'String'
                }
              },
              proximity_placement_group: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.proximityPlacementGroup',
                type: {
                  name: 'String'
                }
              },
              hw_revision: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.hwRevision',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
