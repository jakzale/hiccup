# Working on entity specs
require 'spec_helper'
require 'Entity'

describe Entity do
    it "should initialize properly with a description" do
        description = "Some description"
        entity = Entity.new description
        entity.description.should eq(description)
    end
end