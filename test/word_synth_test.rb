require "minitest/autorun"
require_relative "../lib/word_synth"
require_relative "../lib/effects"

class WordSynthTest < Minitest::Test
  def test_play_without_effects
    word_synth = WordSynth.new
    assert_equal "Ruby is fun!", word_synth.play("Ruby is fun!")
  end

  def test_play_with_reverse
    word_synth = WordSynth.new
    word_synth.add_effect(Effects.reverse)
    assert_equal "ybuR si !nuf", word_synth.play("Ruby is fun!")
  end

  def test_play_with_many_effects
    word_synth = WordSynth.new

    word_synth.add_effect(Effects.echo(2))
    word_synth.add_effect(Effects.loud(3))
    word_synth.add_effect(Effects.reverse)
    assert_equal "!!!YYBBUURR !!!SSII !!!!!NNUUFF", word_synth.play("Ruby is fun!")
  end
end
