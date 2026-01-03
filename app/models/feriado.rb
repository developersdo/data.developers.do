class Feriado < ActiveRecord::Base
  def self.by_year(year)
    dt = DateTime.new(year)
    boy = dt.beginning_of_year
    eoy = dt.end_of_year
    where('fecha_original >= ? and fecha_original <= ?', boy, eoy)
  end
end
