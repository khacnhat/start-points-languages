dmcs -t:library -r:/moq/nunit.framework.dll -r:/moq/Moq.dll -out:RunTests.dll *.cs
if [ $? -eq 0 ]; then
  nunit-console -nologo RunTests.dll
fi
