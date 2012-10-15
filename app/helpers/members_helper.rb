module MembersHelper

  #MemberShip-inv2, loyaltyPoints is a NAT
  def get_loyalty_points(member)
    sum = 0
    member.transactions.each do |t|
      sum += t.loyalty_points_to_add
    end
    return sum
  end
  
end
