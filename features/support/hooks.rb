Before do
  @emulator = TE3270.emulator_for :extra do |platform|
    platform.session_file = 'Local file path for Attachmate/Quick3270 session file'
  end
end


After do
  TE3270.disconnect(@emulator)

end