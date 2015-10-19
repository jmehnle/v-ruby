class V < Gem::Version
  VERSION = '0.0.1'

  def major
    return segments[0]
  end

  def minor
    return segments[1]
  end

  def build
    return segments[2]
  end
  alias_method :patch, :build
  alias_method :tiny,  :build

  def numeric
    return @numeric ||= begin
      major, minor, build = segments
      major + 0.001 * minor.to_i + 0.000001 * build.to_i
    end
  end
end

# vim:sw=2 sts=2
