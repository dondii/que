# frozen_string_literal: true

require 'spec_helper'

describe Que, 'helpers' do
  describe "clear!" do
    it "should empty the jobs table" do
      DB[:que_jobs].insert job_class: "Que::Job"
      assert_equal 1, DB[:que_jobs].count
      Que.clear!
      assert_equal 0, DB[:que_jobs].count
    end
  end
end
