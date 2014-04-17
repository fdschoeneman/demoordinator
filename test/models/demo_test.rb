require 'test_helper'

describe Demo do

  describe "db columns and types" do

    it { Demo.columns_hash['aasm_state'].type.must_equal :string }
    it { Demo.columns_hash['client_id'].type.must_equal :integer }
    it { Demo.columns_hash['contractor_id'].type.must_equal :integer }
    it { Demo.columns_hash['facilitator_id'].type.must_equal :integer }
    it { Demo.columns_hash['venue_id'].type.must_equal :integer }
  end

  describe "associations" do

    it { Demo.reflections[:client].macro.must_equal :belongs_to }
    it { Demo.reflections[:contractor].macro.must_equal :belongs_to }
    it { Demo.reflections[:venue].macro.must_equal :belongs_to }
    it { Demo.reflections[:facilitator].macro.must_equal :belongs_to }
  end

  let(:demo) { FactoryGirl.build(:demo) }

  describe "states" do

    describe "initial state must be :drafted" do

      it { demo.drafted?.must_equal true }
    end

    describe "proffer" do

      it "must change demo state to profferred" do
        demo.proffer
        demo.proffered?.must_equal true
      end
    end

    describe "agree" do
      it "must change demo state to contracted" do
        demo.aasm_state = "proffered"
        demo.agree
        demo.contracted?.must_equal true
      end
    end

  end

end
