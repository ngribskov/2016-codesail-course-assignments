class Building
  attr_accessor :num_windows, :num_walls, :num_stories, :building_materials, :colors, :has_aircon
  def initialize(countwindow, countwalls, countstories, material, extcolors, airconTF)
  @num_windows = countwindow
  @num_walls = countwalls
  @num_stories = countstories
  @building_materials = material
  @colors = extcolors
  @has_aircon = airconTF
  end
end

apartament = Building.new(20*20,4,20,['brick','steel','concrete'],['red'],false)
house = Building.new(2*6,4,2,['wood'],['blue','white','cerulean'],true)
