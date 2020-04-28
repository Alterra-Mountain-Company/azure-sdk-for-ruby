# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2020_03_01
  module Models
    #
    # Cache encryption settings.
    #
    class CacheEncryptionSettings

      include MsRestAzure

      # @return [KeyVaultKeyReference] Specifies the location of the key
      # encryption key in Key Vault.
      attr_accessor :key_encryption_key


      #
      # Mapper for CacheEncryptionSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CacheEncryptionSettings',
          type: {
            name: 'Composite',
            class_name: 'CacheEncryptionSettings',
            model_properties: {
              key_encryption_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyEncryptionKey',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultKeyReference'
                }
              }
            }
          }
        }
      end
    end
  end
end
