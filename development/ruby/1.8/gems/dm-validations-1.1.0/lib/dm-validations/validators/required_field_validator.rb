module DataMapper
  module Validations

    ##
    #
    # @author Guy van den Berg
    # @since  0.9
    class PresenceValidator < GenericValidator
      def call(target)
        value = target.validation_property_value(field_name)
        property = target.validation_property(field_name)
        return true if present?(value, property)

        error_message = @options[:message] || default_error(property)
        add_error(target, error_message, field_name)

        false
      end

      protected

      # Boolean property types are considered present if non-nil.
      # Other property types are considered present if non-blank.
      # Non-properties are considered present if non-blank.
      def present?(value, property)
        boolean_type?(property) ? !value.nil? : !DataMapper::Ext.blank?(value)
      end

      def default_error(property)
        actual = boolean_type?(property) ? :nil : :blank
        ValidationErrors.default_error_message(actual, field_name)
      end

      # Is +property+ a boolean property?
      #
      # Returns true for Boolean, ParanoidBoolean, TrueClass, etc. properties.
      # Returns false for other property types.
      # Returns false for non-properties.
      def boolean_type?(property)
        property ? property.primitive == TrueClass : false
      end

    end # class PresenceValidator

    module ValidatesPresence
      extend Deprecate

      ##
      # Validates that the specified attribute is present.
      #
      # For most property types "being present" is the same as being "not
      # blank" as determined by the attribute's #blank? method. However, in
      # the case of Boolean, "being present" means not nil; i.e. true or
      # false.
      #
      # @note
      #   dm-core's support lib adds the blank? method to many classes,
      # @see lib/dm-core/support/blank.rb (dm-core) for more information.
      #
      # @example [Usage]
      #   require 'dm-validations'
      #
      #   class Page
      #     include DataMapper::Resource
      #
      #     property :required_attribute, String
      #     property :another_required, String
      #     property :yet_again, String
      #
      #     validates_presence_of :required_attribute
      #     validates_presence_of :another_required, :yet_again
      #
      #     # a call to valid? will return false unless
      #     # all three attributes are !blank?
      #   end
      def validates_presence_of(*fields)
        opts = opts_from_validator_args(fields)
        add_validator_to_context(opts, fields, DataMapper::Validations::PresenceValidator)
      end

      deprecate :validates_present, :validates_presence_of

    end # module ValidatesPresent
  end # module Validations
end # module DataMapper
