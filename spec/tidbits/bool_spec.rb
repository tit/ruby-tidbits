# frozen_string_literal: true

require 'rspec'

require_relative '../../lib/tidbits/bool'

describe NilClass do
  context '.to_bool' do
    it 'false' do
      expect(nil.to_bool).to be false
    end
  end
end

describe String do
  context '.to_bool' do
    it 'true' do
      %w[TRUE True true T t YES Yes yes Y y 1].each do |string|
        expect(string.to_bool).to be true
      end
    end

    it 'false' do
      %w[NO Not false F 0].each do |string|
        expect(string.to_bool).to be false
      end
    end
  end
end

describe Numeric do
  context '.to_bool' do
    it 'true' do
      expect(1.to_bool).to be true
    end

    it 'false' do
      expect(0.to_bool).to be false
    end
  end
end

describe FalseClass do
  context '.to_bool' do
    it 'false' do
      expect(false.to_bool).to be false
    end
  end

  context '.to_i' do
    it '0' do
      expect(false.to_i).to be 0
    end
  end
end

describe TrueClass do
  context '.to_bool' do
    it 'true' do
      expect(true.to_bool).to be true
    end
  end

  context '.to_i' do
    it '1' do
      expect(true.to_i).to be 1
    end
  end
end
