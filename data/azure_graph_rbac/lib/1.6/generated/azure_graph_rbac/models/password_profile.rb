# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # The password profile associated with a user.
    #
    class PasswordProfile

      include MsRestAzure

      # @return [String] Password
      attr_accessor :password

      # @return [Boolean] Whether to force a password change on next login.
      attr_accessor :force_change_password_next_login


      #
      # Mapper for PasswordProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PasswordProfile',
          type: {
            name: 'Composite',
            class_name: 'PasswordProfile',
            model_properties: {
              password: {
                client_side_validation: true,
                required: true,
                serialized_name: 'password',
                type: {
                  name: 'String'
                }
              },
              force_change_password_next_login: {
                client_side_validation: true,
                required: false,
                serialized_name: 'forceChangePasswordNextLogin',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
