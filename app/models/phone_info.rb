class PhoneInfo < ActiveRecord::Base

  def self.exact_match(phone)
    phone_info = PhoneInfo.where({ os: "#{phone.os}", screen_size: "#{phone.screen_size}"}, camera: "#{phone.camera}")
    array_of_info = phone_info.to_a
    if array_of_info.empty?
      'No phone matches'
    else
      array_of_info
    end
  end
end
