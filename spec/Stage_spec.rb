#Stage_spec.rb
require 'spec_helper'
require 'Stage'

describe Stage do
    it "works" do
        stage = Stage.new
        stage.name.should eq("Empty")
    end
end