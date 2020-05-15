# the user chooses from a list of main dishes
# the user chooses 2 side dish items
# computer repeats users order
# computer totals lunch items and displays total
#---------------------------------------
# @current_total.to_i += #price of any item =
#--------------------------------------- 



@main_dishes = [
    {name: 'Pizza', price: 2.00},
    {name: 'Hamburger', price: 2.50},
    {name: 'Chili', price: 1.50}
]
@side_dishes = [
    {name: 'Fries', price: 1.00},
    {name: 'Potatoes', price: 1.00},
    {name: 'Corn', price: 1.00}
]
@treats = [
    {name: 'Brownies', price: 0.75},
    {name: 'Fruit', price: 0.50},
    {name: 'Yogurt', price: 1.00}
]
    @default_total = 0
    @current_total = @default_total.clone

    def main_menu
        puts "\n---Lunch Lady--- "
        puts "\nPlease select an option from the following menu: "
        puts "\n1) To make an Order"
        puts "\n2) To exit "
        puts "\nType 'Exit' at anytime to return to the Main Menu. "
        print "> "

        case gets.strip
            when '1'
                wallet_size

            when '2' || 'exit' || 'Exit'
                puts " Thank you! Have a great day!"
                puts " "

            else
                puts "----Invalid Option----"
                puts " \nPress RETURN to return to Main Menu:"
                print "> "
                gets.chomp
                main_menu
         
        end
    end



    # puts "How much money do you have to spend on lunch?"
    # print "> $"

# ! == NO
def wallet_size
        print "What is your budget for lunch today? $" 
        @wallet = gets.strip
        if @wallet.match(/^\d+$/)
            puts "\nThank you!"
            #call menu options
            main_dish_menu
            
        else
            puts "\nInvalid Input"
            puts "\nPlease submit a valid number."
            puts "\nPress RETURN to go back:"
            print "> "
            gets.chomp
            wallet_size
        end
end



def main_dish_menu
        puts " -------------------------------------"
        puts "Here are today's main dish options:"
    @main_dishes.each do |dish|
            puts "\n#{dish[:name]},  $#{dish[:price]}" #interpulation
    end
        puts " -------------------------------------"   
        puts "\nWhat would you like to have for your main dish?"
        print "> "
    case @main_dish_choice = gets.chomp.capitalize
        when "Pizza"
            @current_total.to_i += @main_dish_choice[0][:price].to_i
            puts "\nLittle Ceasars or bust!"
            puts "\nPress RETURN to select a side dish:"
            print "> "
            gets.chomp
            side_dish_menu
        when "Hamburger"
            @current_total.to_i += 2.50
            puts "\nNothin beats a Big Mac!"
            puts "\nPress RETURN to select a side dish:"
            print "> "
            gets.chomp
            side_dish_menu
        when "Chili"
            @current_total.to_i += 1.50
            puts "\nYou're in for a rough ride!"
            puts "\nPress RETURN to select a side dish:"
            print "> "
            gets.chomp
            side_dish_menu
        when "Exit"
            puts "\nNow going back to the Main Manu"
            main_menu
        else
            "\nWe aren't serving that today."
            puts "\nPress RETURN to go back:"
            print "> "
            gets.chomp
            main_dish_menu
    end
    
end



def side_dish_menu
        puts " -------------------------------------"
        puts "Here are today's side dish options:"
    @side_dishes.each do |dish|
            puts "\n#{dish[:name]},  $#{dish[:price]}" 
    end
            puts " -------------------------------------"
            puts "\nWhat would you like to have for your side dish?"
            print "> "
    case @side_dish_choice = gets.chomp.capitalize
        when "Fries"
            @current_total.to_i += 1.00
                puts "\nWe get them from Wendy's in case you're wondering."
                puts "\nPress RETURN to select a treat!"
                print "> "
                gets.chomp
                treat_menu
        when "Potatoes"
            @current_total.to_i += 1.00
                puts "\nStraight from Idaho!"
                puts "\nPress RETURN to select a treat!"
                print "> "
                gets.chomp
                treat_menu
        when "Corn"
            @current_total.to_i += 1.00
                puts "\nShucked em myself!"
                puts "\nPress RETURN to select a treat!"
                print "> "
                gets.chomp
                treat_menu
        when "Exit"
            puts "\nNow going back to the Main Manu"
            main_menu
        else
            "\nWe aren't serving that today." #to be changed
                puts "\nPress RETURN to go back:"
                print "> "
                gets.chomp
                side_dish_menu
        end

end


def treat_menu
    puts " -------------------------------------"
    puts "Here are today's treat options:"
        @treats.each do |dish|
            puts "\n#{dish[:name]},  $#{dish[:price]}" 
        end
            puts " -------------------------------------"
            puts "\nWhat would you like to have for your treat?"
            print "> "
        case @treats_choice = gets.chomp.capitalize
            when "Brownies"
                @current_total.to_i += 0.75
                    puts "\nFreshly made too!"
                    puts "\nPress RETURN to Checkout!"
                    print "> "
                    gets.chomp
                    checkout_menu
            when "Fruit"
                @current_total.to_i += 0.50
                    puts "\nFreshly picked!"
                    puts "\nPress RETURN to Checkout!"
                    print "> "
                    gets.chomp
                    checkout_menu
            when "Yogurt"
                @current_total.to_i += 1.00
                    puts "\nMilky goodness!"
                    puts "\nPress RETURN to Checkout!"
                    print "> "
                    gets.chomp
                    checkout_menu
            when "Exit"
                puts "\nNow going back to the Main Manu"
                main_menu
            else
                "\nWe aren't serving that today." 
                    puts "\nPress RETURN to go back:"
                    print "> "
                    gets.chomp
                    treat_menu
            end

end



def checkout_menu
    puts "this is the checkout menu"
    puts " These were your options #{@main_dish_choice} #{@side_dish_choice} #{@treats_choice}"
    puts "your total comes out to #{@current_total.to_i}"
    
    



end




# Bonus Objectives:

# the user can choose as many "add-on" items as they want before getting total
# the user can clear their choices and start over
# the user has a wallet total they start with and their choices cannot exceed what they can pay for
# the program is in a loop to keep asking the user to make new orders until they type 'quit' at any time
 

# When we need the wallet size myWalletAsNumber = @wallet.to_i
main_menu






