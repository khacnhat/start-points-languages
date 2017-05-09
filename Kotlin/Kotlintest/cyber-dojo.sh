rm -f *.class
CLASSES=.:`ls /usr/share/kotlin/kotlinc/lib/*.jar | tr '\n' ':'`
CLASSES=`ls /kotlin/*.jar | tr '\n' ':'`${CLASSES}
kotlinc *.kt -include-runtime -cp $CLASSES
if [ $? -eq 0 ]; then
  java -cp $CLASSES org.junit.runner.JUnitCore `ls -1 *Test*.class | sed 's/\(.*\)\..*/\1/'` | grep -Ev 'org.junit.runner|org.junit.internal|sun.reflect|org.junit.Assert|java.lang.reflect|org.hamcrest'
fi
