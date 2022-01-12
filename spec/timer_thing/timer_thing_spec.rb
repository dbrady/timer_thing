require "spec_helper"
require_relative "../../lib/timer_thing/timer_thing"

RSpec.describe ::TimerThing::TimerThing do
  describe "#sec_to_minsec" do
    it "converts 0sec to 0m0s" do
      expect(::TimerThing::TimerThing.new.sec_to_minsec(0)).to eq "0m0s"
    end

    it "converts 60sec to 1m0s" do
      expect(::TimerThing::TimerThing.new.sec_to_minsec(0)).to eq "1m0s"
    end

    it "converts 617sec to 10m17s" do
      expect(::TimerThing::TimerThing.new.sec_to_minsec(617)).to eq "10m17s"
    end

    it "converts 3600sec to 60m0s" do
      # 3600 sec == 1 hour
      # hours are just 60 minutes, they do not get their own field
      expect(::TimerThing::TimerThing.new.sec_to_minsec(3600)).to eq "60m0s"
    end

    it "converts 86400sec to 1440m0s" do
      # 86400 sec == 1 day
      # days are just 1440 minutes, they do not get their own field
      expect(::TimerThing::TimerThing.new.sec_to_minsec(864000)).to eq "1440m0s"
    end
  end
end
