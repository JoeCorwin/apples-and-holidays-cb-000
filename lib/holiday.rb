require 'pry'

# # holiday_supplies = {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end



def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end



def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end



def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |holiday, supply|
      puts "  #{holiday.to_s.split('_').collect{|c| c.capitalize}.join(' ')}: #{supply.join (", ")}"
    end
  end
end



def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbqs = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      if supply.include? "BBQ"
        holidays_with_bbqs << holiday
      end
    end
  end
  holidays_with_bbqs
end
