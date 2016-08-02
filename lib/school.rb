class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def name 
    @name
  end

  # Setter
  def roster=(roster)
    @roster = roster
  end

  # Getter
  def roster
    @roster
  end

  def add_student(name,grade) # roster == {}
    roster[grade] = [name] # roster == {10 => []} roster == {10 => ["lani"]}
  end

  def add_student(name,grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end


  def grade(grade)
    @roster[grade]
  end



   def sort
    @roster.each_value do |array|
      array.sort!
    end
  end

  
end





