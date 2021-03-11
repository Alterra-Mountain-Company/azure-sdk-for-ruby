# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # Managed Certificate used for https
    #
    class ManagedCertificateParameters

      include MsRestAzure

      # @return [SecretType] The type of the Secret to create. Possible values
      # include: 'UrlSigningKey', 'CustomerCertificate', 'ManagedCertificate'
      attr_accessor :type

      # @return [String] Subject name in the certificate.
      attr_accessor :subject

      # @return [String] Certificate expiration date.
      attr_accessor :expiration_date

      # @return [String] Certificate thumbprint.
      attr_accessor :thumbprint


      #
      # Mapper for ManagedCertificateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedCertificate',
          type: {
            name: 'Composite',
            class_name: 'ManagedCertificateParameters',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              subject: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subject',
                type: {
                  name: 'String'
                }
              },
              expiration_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expirationDate',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'thumbprint',
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