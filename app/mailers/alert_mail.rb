class AlertMail < ApplicationMailer
default from: 'arcasystememail@gmail.com'

def alert_mail_heroku
  @datas = People.where({contract_to: (Time.now.next_month.beginning_of_month)..Time.now.next_month.end_of_month})

  mail(to: 'sergio.real4@hotmail.com', subject: 'Monthly Alert Statement')
end
end
