require_relative '../src/excel_to_code'
this_directory = File.dirname(__FILE__)
command = ExcelToC.new
#command = ExcelToRuby.new
command.excel_file = File.join(this_directory,'rangesinsteadofcells.xlsx')
command.output_directory = this_directory
command.output_name = 'rangesinsteadofcells'
#command.cells_that_can_be_set_at_runtime = { "Sheet1" => ["A1"]}
command.extract_repeated_parts_of_formulae = false
command.actually_compile_code = true
command.actually_run_tests = true
command.go!
