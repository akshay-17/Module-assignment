module Loan_status
    def country_loan_check(gdp,state)
       if gdp>5 && state=="Developed"
           puts "Country will get loan from World bank"
       elsif gdp<5 && state=="Developing"
           puts "Country will get loan from IMF"
       else
           puts "Country will not get loan"
       end 
   end
end