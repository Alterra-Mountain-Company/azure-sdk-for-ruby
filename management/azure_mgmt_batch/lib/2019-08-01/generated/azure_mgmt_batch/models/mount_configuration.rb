# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_08_01
  module Models
    #
    # The file system to mount on each node.
    #
    #
    class MountConfiguration

      include MsRestAzure

      # @return [AzureBlobFileSystemConfiguration] The Azure Storage Container
      # to mount using blob FUSE on each node. This property is mutually
      # exclusive with all other properties.
      attr_accessor :azure_blob_file_system_configuration

      # @return [NFSMountConfiguration] The NFS file system to mount on each
      # node. This property is mutually exclusive with all other properties.
      attr_accessor :nfs_mount_configuration

      # @return [CIFSMountConfiguration] The CIFS/SMB file system to mount on
      # each node. This property is mutually exclusive with all other
      # properties.
      attr_accessor :cifs_mount_configuration

      # @return [AzureFileShareConfiguration] The Azure File Share to mount on
      # each node. This property is mutually exclusive with all other
      # properties.
      attr_accessor :azure_file_share_configuration


      #
      # Mapper for MountConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MountConfiguration',
          type: {
            name: 'Composite',
            class_name: 'MountConfiguration',
            model_properties: {
              azure_blob_file_system_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureBlobFileSystemConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'AzureBlobFileSystemConfiguration'
                }
              },
              nfs_mount_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nfsMountConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'NFSMountConfiguration'
                }
              },
              cifs_mount_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cifsMountConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'CIFSMountConfiguration'
                }
              },
              azure_file_share_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureFileShareConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'AzureFileShareConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end