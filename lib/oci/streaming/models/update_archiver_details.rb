# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The update stream archiver parameters.
  class Streaming::Models::UpdateArchiverDetails
    START_POSITION_ENUM = [
      START_POSITION_LATEST = 'LATEST'.freeze,
      START_POSITION_TRIM_HORIZON = 'TRIM_HORIZON'.freeze
    ].freeze

    # The name of the bucket.
    # @return [String]
    attr_accessor :bucket_name

    # The flag to create a new bucket or use existing one.
    # @return [BOOLEAN]
    attr_accessor :use_existing_bucket

    # The start message.
    # @return [String]
    attr_reader :start_position

    # The batch rollover size in megabytes.
    # @return [Integer]
    attr_accessor :batch_rollover_size_in_mbs

    # The rollover time in seconds.
    # @return [Integer]
    attr_accessor :batch_rollover_time_in_seconds

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'bucket_name': :'bucketName',
        'use_existing_bucket': :'useExistingBucket',
        'start_position': :'startPosition',
        'batch_rollover_size_in_mbs': :'batchRolloverSizeInMBs',
        'batch_rollover_time_in_seconds': :'batchRolloverTimeInSeconds'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'bucket_name': :'String',
        'use_existing_bucket': :'BOOLEAN',
        'start_position': :'String',
        'batch_rollover_size_in_mbs': :'Integer',
        'batch_rollover_time_in_seconds': :'Integer'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :bucket_name The value to assign to the {#bucket_name} property
    # @option attributes [BOOLEAN] :use_existing_bucket The value to assign to the {#use_existing_bucket} property
    # @option attributes [String] :start_position The value to assign to the {#start_position} property
    # @option attributes [Integer] :batch_rollover_size_in_mbs The value to assign to the {#batch_rollover_size_in_mbs} property
    # @option attributes [Integer] :batch_rollover_time_in_seconds The value to assign to the {#batch_rollover_time_in_seconds} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.bucket_name = attributes[:'bucketName'] if attributes[:'bucketName']

      raise 'You cannot provide both :bucketName and :bucket_name' if attributes.key?(:'bucketName') && attributes.key?(:'bucket_name')

      self.bucket_name = attributes[:'bucket_name'] if attributes[:'bucket_name']

      self.use_existing_bucket = attributes[:'useExistingBucket'] unless attributes[:'useExistingBucket'].nil?

      raise 'You cannot provide both :useExistingBucket and :use_existing_bucket' if attributes.key?(:'useExistingBucket') && attributes.key?(:'use_existing_bucket')

      self.use_existing_bucket = attributes[:'use_existing_bucket'] unless attributes[:'use_existing_bucket'].nil?

      self.start_position = attributes[:'startPosition'] if attributes[:'startPosition']

      raise 'You cannot provide both :startPosition and :start_position' if attributes.key?(:'startPosition') && attributes.key?(:'start_position')

      self.start_position = attributes[:'start_position'] if attributes[:'start_position']

      self.batch_rollover_size_in_mbs = attributes[:'batchRolloverSizeInMBs'] if attributes[:'batchRolloverSizeInMBs']

      raise 'You cannot provide both :batchRolloverSizeInMBs and :batch_rollover_size_in_mbs' if attributes.key?(:'batchRolloverSizeInMBs') && attributes.key?(:'batch_rollover_size_in_mbs')

      self.batch_rollover_size_in_mbs = attributes[:'batch_rollover_size_in_mbs'] if attributes[:'batch_rollover_size_in_mbs']

      self.batch_rollover_time_in_seconds = attributes[:'batchRolloverTimeInSeconds'] if attributes[:'batchRolloverTimeInSeconds']

      raise 'You cannot provide both :batchRolloverTimeInSeconds and :batch_rollover_time_in_seconds' if attributes.key?(:'batchRolloverTimeInSeconds') && attributes.key?(:'batch_rollover_time_in_seconds')

      self.batch_rollover_time_in_seconds = attributes[:'batch_rollover_time_in_seconds'] if attributes[:'batch_rollover_time_in_seconds']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_position Object to be assigned
    def start_position=(start_position)
      raise "Invalid value for 'start_position': this must be one of the values in START_POSITION_ENUM." if start_position && !START_POSITION_ENUM.include?(start_position)

      @start_position = start_position
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        bucket_name == other.bucket_name &&
        use_existing_bucket == other.use_existing_bucket &&
        start_position == other.start_position &&
        batch_rollover_size_in_mbs == other.batch_rollover_size_in_mbs &&
        batch_rollover_time_in_seconds == other.batch_rollover_time_in_seconds
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
      [bucket_name, use_existing_bucket, start_position, batch_rollover_size_in_mbs, batch_rollover_time_in_seconds].hash
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
