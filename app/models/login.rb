class Login < ActiveRecord::Base
  def timed_out?
    over_due = (Time.now- 6.hours).utc > self.updated_at.getutc
    self.update(available: true) if over_due
    return over_due
  end
end
