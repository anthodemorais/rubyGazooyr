class News < ApplicationRecord
    validates :title, :presence => true,
    format: { with: /.+/, message: 'Titre ne peut pas etre vide' }
    validates :summary, :presence => true,
    format: { with: /.{3,}/, message: 'Titre est trop court' }
    validates :content, :presence => true,
    format: { with: /.{4,}/, message: 'Contenu est trop court' }
    has_many :comments
end
