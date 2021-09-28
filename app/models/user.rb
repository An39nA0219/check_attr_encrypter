class User < ApplicationRecord
  before_save :encrypt_email

  def encrypt_email
    key = "\x9B)\xF7\x857U\xDE\xDD\xF87\xBA\xEF\xDD\xBF\xD1G?\x01\xE9\x86\\\xC4KC\x1E\xDF\f\x82 \x11\t\xE2"
    crypt = ActiveSupport::MessageEncryptor.new(key)
    encrypted_data = crypt.encrypt_and_sign(email)
    self.email = encrypted_data
  end
end
