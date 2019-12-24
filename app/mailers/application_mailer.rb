class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  # default from:~は送信先。問い合わせ内容がここのアドレスから送られてくる。アドレスがこのままでよければここは触らないでＯＫ
  layout 'mailer'
end
