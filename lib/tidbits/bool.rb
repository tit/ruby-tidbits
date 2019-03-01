# frozen_string_literal: true

# NilClass
class NilClass
  # NilClass to bool
  #
  # @example
  #   nil.to_bool
  #   => false
  #
  # @return [FalseClass]
  def to_bool
    false
  end
end

# String
class String
  # String to bool
  #
  # @example
  #   'yes'.to_bool
  #   => true
  #
  #   'no'.to_bool
  #   => false
  #
  # @return [TrueClass, FalseClass]
  def to_bool
    %w[true t yes y 1].include?(to_s.downcase) ? true : false
  end
end

# Numeric
class Numeric
  # Numeric to bool
  #
  # @example
  #   1.to_bool
  #   => true
  #
  #   0.to_bool
  #   => false
  #
  # @return [TrueClass, FalseClass]
  def to_bool
    !zero?
  end
end

# FalseClass
class FalseClass
  # FalseClass to bool
  #
  # @example
  #   false.to_bool
  #   => false
  #
  # @return [FalseClass]
  def to_bool
    false
  end

  # FalseClass to Integer
  #
  # @example
  #   false.to_i
  #   => 0
  #
  # @return [Integer] 0
  def to_i
    0
  end
end

# TrueClass
class TrueClass
  # TrueClass to bool
  #
  # @example
  #   false.to_bool
  #   => true
  #
  # @return [TrueClass]
  def to_bool
    true
  end

  # TrueClass to Integer
  #
  # @example
  #   true.to_i
  #   => 1
  #
  # @return [Integer] 1
  def to_i
    1
  end
end
