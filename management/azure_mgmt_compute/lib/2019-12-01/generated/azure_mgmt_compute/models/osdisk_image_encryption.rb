# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_12_01
  module Models
    #
    # Contains encryption settings for an OS disk image.
    #
    class OSDiskImageEncryption < DiskImageEncryption

      include MsRestAzure


      #
      # Mapper for OSDiskImageEncryption class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OSDiskImageEncryption',
          type: {
            name: 'Composite',
            class_name: 'OSDiskImageEncryption',
            model_properties: {
              disk_encryption_set_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskEncryptionSetId',
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
