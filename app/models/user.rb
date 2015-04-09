class User
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  def self.send_email(id)
    # We are going to fake sending an email because we don't want to set
    # up an open relay just to make the kata code work. The real version
    # of this code would open an SMTP connection, send the data, close the
    # connection, check the return value, etc.
    sleep(10)
  end
end