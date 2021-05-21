class Country
    attr_accessor :country_id,:country_name,:population,:gdp,:states,:army_strength,:state_of_country
     def initialize(country_id,country_name,population,gdp,states,army_strength,state_of_country)
         @country_id=country_id
         @country_name=country_name
         @population=population
         @gdp=gdp
         @states=states
         @army_strength=army_strength
         @state_of_country=state_of_country
     end
 end