require 'lib_helper'

RSpec.describe Rich::Ruby do
  class Example
    def self.class_method
      Rich::Ruby.method_name
    end

    def instance_method
      Rich::Ruby.method_name
    end

    def parent_caller
      a_private_method
    end

    private

    def a_private_method
      Rich::Ruby.method_name(1)
    end
  end

  describe '.method_name' do
    it "gives the method of the caller" do
      expect(Example.class_method).to eq :class_method
      expect(Example.new.instance_method).to eq :instance_method
    end

    it "accepts the level" do
      expect(Example.new.parent_caller).to eq :parent_caller
    end
  end
end
