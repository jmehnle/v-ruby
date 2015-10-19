class V < Gem::Version
  VERSION = '0.0.0'

  def major
    return segments[0]
  end

  def minor
    return segments[1]
  end

  def patch
    return segments[2]
  end

  def numeric
    return @numeric ||= begin
      major, minor, patch = segments
      major + 0.001 * minor + 0.000001 * patch
    end
  end
end

# vim:sw=2 sts=2
