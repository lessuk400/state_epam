class TaskStatus
  def initialize task
    @task = task
  end

  def opened
    puts "Not allowed"
  end

  def inProgress
    puts "Not allowed"

  end

  def resolved
    puts "Not allowed"
  end

  def reopened
    puts "Not allowed"
  end

  def closed
    puts "Not allowed"
  end

  def varified
    puts "Not allowed"
  end
end
