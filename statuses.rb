require './taskstatus.rb'

class Opened < TaskStatus
  def inProgress
    @task.setOrderState(InProgress.new(@task))
  end

  def steps
    puts "Possible steps: "
    puts "inProgress"
  end
end

class InProgress < TaskStatus
  def closed
    @task.setOrderState(Closed.new(@task))
  end

  def resolved
    @task.setOrderState(Resolved.new(@task))
  end

  def steps
    puts "Possible steps: "
    puts "close"
    puts "resolved"
  end
end

class Closed < TaskStatus
  def steps
    puts "Possible steps: "
    puts "no possible steps"
  end
end

class Resolved < TaskStatus
  def reopened
    @task.setOrderState(Reopened.new(@task))
  end

  def varified
    @task.setOrderState(Varified.new(@task))
  end

  def steps
    puts "Possible steps: "
    puts "reopened"
    puts "varified"
  end
end

class Varified < TaskStatus
  def closed
    @task.setOrderState(Closed.new(@task))
  end

  def steps
    puts "Possible steps: "
    puts "closed"
  end
end

class Reopened < TaskStatus
  def inProgress
    @task.setOrderState(InProgress.new(@task))
  end

  def steps
    puts "Possible steps: "
    puts "inProgress"
  end
end
