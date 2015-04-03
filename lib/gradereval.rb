class Gradereval
    
  def initialize(user_id , level)  
    @user_id = user_id
    @level = level    
  end   
  
  def getGrade(num_of_questions, correct)         
    if correct.is_a?(Integer) || correct.is_a?(Float)
      return (correct.to_f / num_of_questions.to_f)* 100 
    end    
    return 0
  end
  
  def evalByAverageGrade(avg,test_count, max)    
    
     if @level == 1 && test_count > max
      if avg.between?(0, 59) 
        return @level = 1
      elsif avg.between?(60, 100) 
        return @level = 2
      else
        return @level+100
      end
     end
     
     if @level == 2 && test_count > max
      if avg.between?(0, 59) 
        return @level = 2
      elsif avg.between?(60, 100) 
        return @level = 3
      else
        return @level+100
      end
     end
         
     if @level == 3 && test_count > max
      if avg.between?(0, 59) 
        return @level = 2
      elsif avg.between?(60, 100) 
        return @level = 3
      else
        return @level+100
      end
     end     
    return @level
  end  
  
  def evalByGrade(grade)    
    
     if @level == 0 
      if grade.between?(0, 39) 
        return @level = 1
      elsif grade.between?(40, 69) 
        return @level = 2
      else
        return @level = 3
      end
     end
    
     if @level == 1 
      if grade.between?(0, 59) 
        return @level = 1
      elsif grade.between?(60, 100) 
        return @level = 2
      else
        return @level+100
      end
     end
     
     if @level == 2 
      if grade.between?(0, 59) 
        return @level = 2
      elsif grade.between?(60, 100) 
        return @level = 3
      else
        return @level+100
      end
     end
         
     if @level == 3 
      if grade.between?(0, 59) 
        return @level = 2
      elsif grade.between?(60, 100) 
        return @level = 3
      else
        return @level+100
      end
     end     
    return @level
  end  
end 