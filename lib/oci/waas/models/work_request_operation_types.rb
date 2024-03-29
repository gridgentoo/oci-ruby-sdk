# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

module OCI
  module Waas::Models
    WORK_REQUEST_OPERATION_TYPES_ENUM = [
      WORK_REQUEST_OPERATION_TYPES_CREATE_WAAS_POLICY = 'CREATE_WAAS_POLICY'.freeze,
      WORK_REQUEST_OPERATION_TYPES_UPDATE_WAAS_POLICY = 'UPDATE_WAAS_POLICY'.freeze,
      WORK_REQUEST_OPERATION_TYPES_DELETE_WAAS_POLICY = 'DELETE_WAAS_POLICY'.freeze,
      WORK_REQUEST_OPERATION_TYPES_PURGE_WAAS_POLICY_CACHE = 'PURGE_WAAS_POLICY_CACHE'.freeze,
      WORK_REQUEST_OPERATION_TYPES_CREATE_CUSTOM_PROTECTION_RULE = 'CREATE_CUSTOM_PROTECTION_RULE'.freeze,
      WORK_REQUEST_OPERATION_TYPES_UPDATE_CUSTOM_PROTECTION_RULE = 'UPDATE_CUSTOM_PROTECTION_RULE'.freeze,
      WORK_REQUEST_OPERATION_TYPES_DELETE_CUSTOM_PROTECTION_RULE = 'DELETE_CUSTOM_PROTECTION_RULE'.freeze
    ].freeze
  end
end
