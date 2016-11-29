require('rspec')
require('places')

describe(Place) do
  before() do
    Place.clear()
  end

  describe(".clear") do
    it('will empty places before each spec run') do
      Place.new('LA').save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end

  describe('#name') do
    it('will list the name of the place') do
      new_place = Place.new('Tokyo')
      expect(new_place.name()).to(eq('Tokyo'))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Place.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will save places') do
      new_place = Place.new('New York')
      new_place.save()
      expect(Place.all()).to(eq([new_place]))
    end
  end
end
