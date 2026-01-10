echo "Load test for normal [1rps/2min] is started."
$JMETER_HOME/bin/jmeter -n -t tests/load-test_1rps-2min.jmx -l data/raw/load-test_1rps-2min_normal.jtl &>> runner/normal/load-test_1rps-2min_normal.out
echo "Load test for normal [1rps/2min] is finished."

