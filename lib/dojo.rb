class Dojo
  def run word
    return nil unless word
    return [] if word.empty?

    result = []

    word.split("").each { |c|
      (c.upcase.eql? c )? result.push(1) : result.push(0)
    }

    return result
  end
end