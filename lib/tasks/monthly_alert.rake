namespace :monthly_alert do

  # desc "month_mail_use_model"
  # task :task_model => :environment do
  #     @users = People.where({contract_to: (Time.now.next_month.beginning_of_month)..Time.now.next_month.end_of_month})
  #
  #   @users.each do |user|
  #   ExampleMailer.sample_email(user).deliver_now
  #
  #   end
  # end
# end
desc "alert_mail_use_model"
task :task_model => :environment do
  @datas = People.where({contract_to: (Time.now.next_month.beginning_of_month)..Time.now.next_month.end_of_month})
  AlertMail.alert_mail_heroku.deliver_now

end
end
