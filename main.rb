# A CLI application for handling data of as much as countries that we can. Example of what data that we can have:
# 1.Population
# 2.GDP(Gross Domestic Production)
# 3.States
# 4.Army Strength
# 5.State of country(developing, developed)
# Etc.
# On the basis of all these data we will be building modules to conceive various outputs like:
# Whether that country will get loan from IMF (International Monetary Fund) or WB (World bank).
# Whether the country can have a seat in the UN (United Nations) Security council.
class Main

    include Loan_status
    include Security_council_status
    include War_status
    attr_accessor :countries
    
    def initialize
        @countries=[]
    end

    def add_country
        puts "Enter country id : "
        country_id=gets.chomp()
        puts "Enter country name : "
        country_name=gets.chomp()
        puts "Enter country population: "
        population=gets.chomp().to_i
        puts "Enter country gdp : "
        gdp=gets.chomp().to_i
        print "Enter comma separated state names :"
        states = gets.chomp
        states = states.split(",")
        puts "Enter country army strength : "
        army_strength=gets.chomp().to_i
        puts "Enter country state Developing or Developed) : "
        state_of_country = gets.chomp
        @countries<< Country.new(country_id,country_name,population,gdp,states,army_strength,state_of_country)
        puts "Added the company!!!"

    end

    def display_all_country
      @countries.each {|c| puts c.country_id+" ,"+c.country_name+", "+c.population.to_s+", "+c.gdp.to_s+", "+c.states.join(",")+", "+c.army_strength.to_s+", "+c.state_of_country}
    end

    def get_country_by_id(id)
        for i in @countries do
            if i.country_id.eql? id
                return i
            end
        end
    end
end
app = Main.new()
app.countries << Country.new("POL","Poland",36000000,3.9,["MO","RAS","ZAD"],150000,"Developing")
app.countries << Country.new("IND","India",136000000,4.5,["MH","MP","UP","UK"],1250000,"Developing")
app.countries << Country.new("JAP","JAPAN",6000000,7.6,["DAS","HOS","ADE"],350000,"Developed")

flag=1
while flag>0
    puts " "
    puts "Countries List"
    puts "-------------------------------------------"
    puts "1. Enter New Country Data"
    puts "2. Display the whole country list"
    puts "3. Check loan status of a country"
    puts "4. Check UN security council status of a Country"
    puts "5. Check War Status of a country"
    puts "6. Exit"

    puts "Enter Your choice : "
    choice=gets.chomp().to_i

    case choice
    when 1
        app.add_country
    when 2
        app.display_all_country
    when 3
        print "Enter country id : "
        id = gets.chomp()
        country = app.get_country_by_id(id)
        if country != nil
          app.can_country_get_loan(country.gdp,country.country_state)
        else
          puts "Country is not present"
        end
    when 4
        print "Enter country id : "
        id = gets.chomp
        country = app.get_country_by_id(id)
        if country != nil 
          app.seat_in_un(country)
        else
          puts "Country is not present"  
        end
        
    when 5
        print "Enter country id : "
        id = gets.chomp()
        country = app.get_country_by_id(id)
        if country != nil 
          app.can_country_win_war(country)
        else
          puts "Country is not present"  
        end
    when 6
        flag=0
    else  
        puts "Invalid input !!!"
    end
end
