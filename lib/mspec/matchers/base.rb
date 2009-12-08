class SpecPositiveOperatorMatcher
  def initialize(actual)
    @actual = actual
  end

  def ==(expected)
    SpecExpectation.should_paired!
    unless @actual == expected
      SpecExpectation.fail_with("Expected #{@actual.pretty_inspect}",
                            "to equal #{expected.pretty_inspect}")
    end
  end

  def <(expected)
    SpecExpectation.should_paired!
    unless @actual < expected
      SpecExpectation.fail_with("Expected #{@actual.pretty_inspect}",
                            "to be less than #{expected.pretty_inspect}")
    end
  end

  def <=(expected)
    SpecExpectation.should_paired!
    unless @actual <= expected
      SpecExpectation.fail_with("Expected #{@actual.pretty_inspect}",
                            "to be less than or equal to #{expected.pretty_inspect}")
    end
  end

  def >(expected)
    SpecExpectation.should_paired!
    unless @actual > expected
      SpecExpectation.fail_with("Expected #{@actual.pretty_inspect}",
                            "to be greater than #{expected.pretty_inspect}")
    end
  end

  def >=(expected)
    SpecExpectation.should_paired!
    unless @actual >= expected
      SpecExpectation.fail_with("Expected #{@actual.pretty_inspect}",
                            "to be greater than or equal to #{expected.pretty_inspect}")
    end
  end

  def =~(expected)
    SpecExpectation.should_paired!
    unless @actual =~ expected
      SpecExpectation.fail_with("Expected #{@actual.pretty_inspect}",
                            "to match #{expected.pretty_inspect}")
    end
  end
end

class SpecNegativeOperatorMatcher
  def initialize(actual)
    @actual = actual
  end

  def ==(expected)
    SpecExpectation.should_paired!
    if @actual == expected
      SpecExpectation.fail_with("Expected #{@actual.pretty_inspect}",
                            "not to equal #{expected.pretty_inspect}")
    end
  end

  def <(expected)
    SpecExpectation.should_paired!
    if @actual < expected
      SpecExpectation.fail_with("Expected #{@actual.pretty_inspect}",
                            "not to be less than #{expected.pretty_inspect}")
    end
  end

  def <=(expected)
    SpecExpectation.should_paired!
    if @actual <= expected
      SpecExpectation.fail_with("Expected #{@actual.pretty_inspect}",
                            "not to be less than or equal to #{expected.pretty_inspect}")
    end
  end

  def >(expected)
    SpecExpectation.should_paired!
    if @actual > expected
      SpecExpectation.fail_with("Expected #{@actual.pretty_inspect}",
                            "not to be greater than #{expected.pretty_inspect}")
    end
  end

  def >=(expected)
    SpecExpectation.should_paired!
    if @actual >= expected
      SpecExpectation.fail_with("Expected #{@actual.pretty_inspect}",
                            "not to be greater than or equal to #{expected.pretty_inspect}")
    end
  end

  def =~(expected)
    SpecExpectation.should_paired!
    if @actual =~ expected
      SpecExpectation.fail_with("Expected #{@actual.pretty_inspect}",
                            "not to match #{expected.pretty_inspect}")
    end
  end
end
