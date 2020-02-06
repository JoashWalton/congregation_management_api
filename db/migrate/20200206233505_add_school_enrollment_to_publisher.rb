class AddSchoolEnrollmentToPublisher < ActiveRecord::Migration[6.0]
  def change
    add_column :publishers, :enrolled_in_school, :boolean
    add_column :publishers, :school_enrollment_date, :date
  end
end
