class Monkey < ActiveRecord::Base
  
  def best_friend
    # @best_friend ||= Monkey.find_by_id(id+1) || Monkey.last
    @best_friend ||= Monkey.find_by_id(best_friend_id)
  end  
  
  def best_friend_id
    1 + ((Time.now.min+id) % 100)
  end
  
end
