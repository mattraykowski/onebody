class CleanUpPages < ActiveRecord::Migration
  def self.up
    Site.each do
      Page.where("path in ('home', 'system')").update_all(system: false)
    end
  end

  def self.down
  end
end
