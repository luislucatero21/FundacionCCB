class User <ActiveRecord::Base
    has_many :projects, dependent: :destroy
    before_save {self.correo = correo.downcase}
    validates :nombre, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    
    validates :correo, presence: true,
                uniqueness:{case_sensitive: false},
                length: {maximum: 100},
                format: {with: VALID_EMAIL_REGEX}
    validates :numero_telefono, presence: true,
                length: {minimum:10, maximum: 25}
    validates :apellido_paterno, presence: true,
                length: {minimum:1, maximum: 25}
    validates :apellido_materno, presence: true,
                length: {minimum:1, maximum: 25}
    validates :nombre_de_usuario, presence: true,
                uniqueness: {case_sensitive: false}, 
                length: {minimum:5, maximum: 25}
    has_secure_password
end 
