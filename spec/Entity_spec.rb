# Working on entity specs
require 'spec_helper'
require 'Entity'

describe Entity do
    # Common logic for the entity tests

    it "should initialize properly with a description" do
        description = "Some description"
        entity = Entity.new description
        entity.description.should eq(description)
    end

    describe "Linking" do
        before do
            @boo = Entity.new "Boo"
            @bam = Entity.new "Bam"
        end

        it "should link" do
            # boo = Entity.new "Boo"
            # bam = Entity.new "Bam"
            @boo.link "bam", @bam
            @boo.links.include?('bam').should be_true
            @boo["bam"].should eq(@bam)
        end

        it "should unlink" do
            @boo.links.should be_empty
            @boo.unlink "Bam"
            @boo.link :bam, @bam
            @boo.links.include?(:bam).should be_true
            @boo.unlink :bam
            @boo.links.should be_empty
        end
    end
end