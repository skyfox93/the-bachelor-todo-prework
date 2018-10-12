def get_first_name_of_season_winner(data, season)
  winnerstats=""
  data[season].each{ |object|
    if object["status"].downcase=="winner"
      winnerstats=object["name"].split(" ").first
    end
    
  }
winnerstats
end

def get_contestant_name(data, occupation)
  winnerstats=""
  data.each do |season,people|
    people.each{ |person|
      if person["occupation"]==occupation
        winnerstats=person["name"]
      end
    
    }
end
winnerstats
end

def count_contestants_by_hometown(data, hometown)
  winnerstats=0
  data.each do |season,people|
    people.each{ |person|
      if person["hometown"]==hometown
        winnerstats+=1
      end
      
    }
  end
winnerstats
end

def get_occupation(data, hometown)
  winnerstats=""
  data.each do |season,people|
    people.each{ |person|
      if (person["hometown"]==hometown && winnerstats=="")
        winnerstats=person["occupation"]
      end
    
    }
end
winnerstats
end

def get_average_age_for_season(data, season)
  winnerstats={total: 0, count: 0}
  data[season].each{ |person|
      winnerstats[:total]+=person["age"].to_f
        winnerstats[:count]+=1
        
      
    }
(winnerstats[:total]/winnerstats[:count]).round
end
 