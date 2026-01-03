class Provincia < ActiveRecord::Base
  has_many :municipios
end
