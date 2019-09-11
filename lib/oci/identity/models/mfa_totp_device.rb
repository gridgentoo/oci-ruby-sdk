# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Users can enable multi-factor authentication (MFA) for their own user accounts. After MFA is enabled, the
  # user is prompted for a time-based one-time password (TOTP) to authenticate before they can sign in to the
  # Console. To enable multi-factor authentication, the user must register a mobile device with a TOTP authenticator app
  # installed. The registration process creates the `MfaTotpDevice` object. The registration process requires
  # interaction with the Console and cannot be completed programmatically. For more information, see
  # [Managing Multi-Factor Authentication](https://docs.cloud.oracle.com/Content/Identity/Tasks/usingmfa.htm).
  #
  class Identity::Models::MfaTotpDevice
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The OCID of the MFA TOTP device.
    # @return [String]
    attr_accessor :id

    # **[Required]** The seed for the MFA TOTP device (Base32 encoded).
    #
    # @return [String]
    attr_accessor :seed

    # **[Required]** The OCID of the user the MFA TOTP device belongs to.
    # @return [String]
    attr_accessor :user_id

    # **[Required]** Date and time the `MfaTotpDevice` object was created, in the format defined by RFC3339.
    #
    # Example: `2016-08-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # Date and time when this MFA TOTP device will expire, in the format defined by RFC3339.
    # Null if it never expires.
    #
    # Example: `2016-08-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_expires

    # **[Required]** The MFA TOTP device's current state. After creating the MFA TOTP device, make sure its `lifecycleState` changes from
    # CREATING to ACTIVE before using it.
    #
    # @return [String]
    attr_reader :lifecycle_state

    # The detailed status of INACTIVE lifecycleState.
    # Allowed values are:
    #  - 1 - SUSPENDED
    #  - 2 - DISABLED
    #  - 4 - BLOCKED
    #  - 8 - LOCKED
    #
    # @return [Integer]
    attr_accessor :inactive_status

    # **[Required]** Flag to indicate if the MFA TOTP device has been activated.
    # @return [BOOLEAN]
    attr_accessor :is_activated

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'seed': :'seed',
        'user_id': :'userId',
        'time_created': :'timeCreated',
        'time_expires': :'timeExpires',
        'lifecycle_state': :'lifecycleState',
        'inactive_status': :'inactiveStatus',
        'is_activated': :'isActivated'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'seed': :'String',
        'user_id': :'String',
        'time_created': :'DateTime',
        'time_expires': :'DateTime',
        'lifecycle_state': :'String',
        'inactive_status': :'Integer',
        'is_activated': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :seed The value to assign to the {#seed} property
    # @option attributes [String] :user_id The value to assign to the {#user_id} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_expires The value to assign to the {#time_expires} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [Integer] :inactive_status The value to assign to the {#inactive_status} property
    # @option attributes [BOOLEAN] :is_activated The value to assign to the {#is_activated} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.seed = attributes[:'seed'] if attributes[:'seed']

      self.user_id = attributes[:'userId'] if attributes[:'userId']

      raise 'You cannot provide both :userId and :user_id' if attributes.key?(:'userId') && attributes.key?(:'user_id')

      self.user_id = attributes[:'user_id'] if attributes[:'user_id']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_expires = attributes[:'timeExpires'] if attributes[:'timeExpires']

      raise 'You cannot provide both :timeExpires and :time_expires' if attributes.key?(:'timeExpires') && attributes.key?(:'time_expires')

      self.time_expires = attributes[:'time_expires'] if attributes[:'time_expires']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.inactive_status = attributes[:'inactiveStatus'] if attributes[:'inactiveStatus']

      raise 'You cannot provide both :inactiveStatus and :inactive_status' if attributes.key?(:'inactiveStatus') && attributes.key?(:'inactive_status')

      self.inactive_status = attributes[:'inactive_status'] if attributes[:'inactive_status']

      self.is_activated = attributes[:'isActivated'] unless attributes[:'isActivated'].nil?

      raise 'You cannot provide both :isActivated and :is_activated' if attributes.key?(:'isActivated') && attributes.key?(:'is_activated')

      self.is_activated = attributes[:'is_activated'] unless attributes[:'is_activated'].nil?
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lifecycle_state Object to be assigned
    def lifecycle_state=(lifecycle_state)
      # rubocop:disable Style/ConditionalAssignment
      if lifecycle_state && !LIFECYCLE_STATE_ENUM.include?(lifecycle_state)
        OCI.logger.debug("Unknown value for 'lifecycle_state' [" + lifecycle_state + "]. Mapping to 'LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @lifecycle_state = LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE
      else
        @lifecycle_state = lifecycle_state
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        id == other.id &&
        seed == other.seed &&
        user_id == other.user_id &&
        time_created == other.time_created &&
        time_expires == other.time_expires &&
        lifecycle_state == other.lifecycle_state &&
        inactive_status == other.inactive_status &&
        is_activated == other.is_activated
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, seed, user_id, time_created, time_expires, lifecycle_state, inactive_status, is_activated].hash
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            public_method("#{key}=").call(
              attributes[self.class.attribute_map[key]]
                .map { |v| OCI::Internal::Util.convert_to_type(Regexp.last_match(1), v) }
            )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          public_method("#{key}=").call(
            OCI::Internal::Util.convert_to_type(type, attributes[self.class.attribute_map[key]])
          )
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = public_method(attr).call
        next if value.nil? && !instance_variable_defined?("@#{attr}")

        hash[param] = _to_hash(value)
      end
      hash
    end

    private

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength