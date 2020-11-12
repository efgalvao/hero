require 'test_helper'

class PersonaTest < ActiveSupport::TestCase
  setup do
    @persona = personas(:one)
  end

    test 'tem que ser válido sem alterações' do
      assert @persona.valid?
  end

    test 'não pode ter nome vazio' do
      @persona.name = ''
      assert !@persona.valid?
  end

    test 'não pode ter nome maior que 50 caracteres' do
      @persona.name = '*' * 51
      assert !@persona.valid?
  end

    test 'karma não pode ser em branco' do
    p @persona, "teste"
      @persona.karma = ""
      assert !@persona.valid?
    end
end
