
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :green if /All tests successful/.match(output)
  return :amber if /syntax error/.match(output)
  return :amber if /aborted due to compilation errors/.match(output)
  return :red
}
