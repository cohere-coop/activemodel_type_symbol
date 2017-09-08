require "test_helper"

class ActivemodelTypeSymbolTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ActiveModelTypeSymbol::VERSION
  end

  def test_it_converts_nil_to_nil
    assert_nil ActiveModel::Type.lookup(:symbol).cast(nil)
  end

  def test_it_converts_a_string_to_a_symbol
    assert_equal :asdf, ActiveModel::Type.lookup(:symbol).cast("asdf")
  end
end
