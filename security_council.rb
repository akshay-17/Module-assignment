module Security_council_status
    def seat_in_un(country)
        if country.population>36000000  && country.state_of_country=="Developed"
            puts "seat in un"
        else country.gdp<36000000 &&  country.state_of_country=="Developing"
            puts "no seat in un"
        end
    end
 end