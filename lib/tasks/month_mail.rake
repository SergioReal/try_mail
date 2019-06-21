namespace :month_mail do

  desc "month_mail_use_model"
  task :task_model => :environment do
      @users = User.where({open_time: (Time.now.next_month.beginning_of_month)..Time.now.next_month.end_of_month})

    @users.each do |user|
    ExampleMailer.sample_email(user).deliver_now

    end
  end
end
