module War_status
    def war_winning_chances(country)
       if country.gdp>5  && country.state_of_country=="Developed"
           puts "Winning chances are high"
       else country.gdp<5 &&  country.state_of_country=="Developing"
           puts "Winning chances are very low"
       end
   end
end