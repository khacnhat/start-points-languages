
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :red if /^FAIL/.match(output)
  return :green if /^OK/.match(output)
  return :amber
}
