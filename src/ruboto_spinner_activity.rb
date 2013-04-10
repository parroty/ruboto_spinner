require 'ruboto/widget'
import 'android.widget.ArrayAdapter'
import 'java.util.Locale'

class RubotoSpinnerActivity
  def on_create(bundle)
    super
    set_title 'Ruboto Spinner Sample'
    self.setContentView(Ruboto::R::layout::activity_main)

    adapter = ArrayAdapter.new(self, Ruboto::R::layout::simplerow)
    adapter.add("")
    Locale.getISOCountries.each do |code|
      adapter.add(code)
    end

    spinner = findViewById(Ruboto::R::id::spinner)
    spinner.setAdapter(adapter)
    spinner.setPrompt("List of country codes")
    spinner.setOnItemSelectedListener(ItemSelectedListener.new(self))
  end
end

class ItemSelectedListener
  def initialize(activity)
    @activity = activity
  end
  def onItemSelected(spinner, view, position, id)
    if position != 0
      country_name = Locale.new("", spinner.getSelectedItem).getDisplayCountry(Locale::ENGLISH)
      label = @activity.findViewById(Ruboto::R::id::label)
      label.text = "Selected country is '#{country_name}'."
    end
  end
end