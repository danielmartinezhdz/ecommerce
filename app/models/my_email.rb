class MyEmail < ApplicationRecord
	validates_presence_of :email, message: "Olvidaste poner correo"
	validates_uniqueness_of :email, message: "Este correo ya fue registrado"
	validates_format_of :email, with: Devise::email_regexp
end
