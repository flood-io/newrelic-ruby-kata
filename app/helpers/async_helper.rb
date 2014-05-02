module AsyncHelper
  def send_email_to_user
  	QC.enqueue "User.send_email"
  end
end
