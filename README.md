# Skeleton Cucumber Project to Automatically Connect to a Mainframe

This project can be used as a starting point when creating Ruby/Cucumber scripts that will involve connecting to a mainframe.


## Usage

All you have to do to get this project running (assuming you have all the necessary gems installed) is to modify the 'Hooks.rb' file and  provide the local file path of your Attachmate/Quik3270 session file.
Her is an example of how to change the session file path

    Before do
      @emulator = TE3270.emulator_for :extra do |platform|
        platform.session_file = 'C:/Users/ReddytoRumble/Sessionfile.edp'
      end
    end

    After do
      TE3270.disconnect(@emulator)
    end


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
