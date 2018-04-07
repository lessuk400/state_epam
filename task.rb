class Task
  attr_accessor :status, :task, :test
  def initialize name
    @name = name
    @status = Opened.new self
  end

  def opened
    @status.opened
  end

  def closed
    @status.closed
  end

  def reopened
    @status.reopened
  end

  def varified
    @status.varified
  end

  def resolved
    @status.resolved
  end

  def inProgress
    @status.inProgress
  end

  def setOrderState status
    @status = status
  end

  def to_s
    puts "Task status is: #{@status}"
    @status.steps
    ""
  end
end
