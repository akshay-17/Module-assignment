module Loan_status
    def can_country_get_loan(gdp,state)
       if gdp>5 && state=="Developed"
           puts "COuntry will get loan from World bank"
       elsif gdp<5 && state=="Developing"
           puts "COuntry will get loan from IMF"
       else
           puts "Country will not get loan"
       end 
   end
end