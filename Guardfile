# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'ruby' do
  # run any benchmarking files
  watch(/bench.*\.rb/)

  # run a program when it's data is changed
  watch(/.*\.csv/) { 'convert.rb' }
end
