module Effects
  def self.reverse
    Proc.new { |words| words.split(" ").map(&:reverse).join(" ") }
  end

  def self.echo(iteration)
    Proc.new do |words|
      words.each_char.map { |char| char == " " ? char : char * iteration }.join
    end
  end

  def self.loud(exclamation_count)
    proc do |words|
      words.split(" ").map(&:upcase).map do |chunk|
        chunk + "!" * exclamation_count
      end.join(" ")
    end
  end
end
