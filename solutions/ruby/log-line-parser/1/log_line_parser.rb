class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    arr_strings = @line.split(':')
    return arr_strings[1].strip
  end

  def log_level
    if @line.include?('ERROR')
      return 'error'
    elsif @line.include?('WARNING')
      return 'warning'
    elsif @line.include?('INFO')
      return 'info'
    end
  end

  def reformat
    arr_strings = @line.split(':')
    message = arr_strings[1].strip
    
    if @line.include?('ERROR')
      return "#{message} (error)"
    elsif @line.include?('WARNING')
      return "#{message} (warning)"
    elsif @line.include?('INFO')
      return "#{message} (info)"
    end
  end
end
