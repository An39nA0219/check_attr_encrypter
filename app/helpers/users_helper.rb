module UsersHelper
  def decrypt(data)
    key = "\x9B)\xF7\x857U\xDE\xDD\xF87\xBA\xEF\xDD\xBF\xD1G?\x01\xE9\x86\\\xC4KC\x1E\xDF\f\x82 \x11\t\xE2"
    crypt = ActiveSupport::MessageEncryptor.new(key)
    crypt.decrypt_and_verify(data)
  end
end
