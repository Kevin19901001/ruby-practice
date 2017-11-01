# Some times, you want to override the default way of creating object:
class MyLogger

  private_class_method :new

  @@logger = nil

  def MyLogger.create
    @@logger = new unless @@logger
    @@logger
  end

end

puts MyLogger.create.object_id
puts MyLogger.create.object_id
