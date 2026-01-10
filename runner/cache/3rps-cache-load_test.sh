echo "Load test for cache [3rps/2min] is started."
$JMETER_HOME/bin/jmeter -n -t tests/load-test_3rps-2min.jmx -l data/raw/load-test_3rps-2min_cache.jtl &>> runner/cache/load-test_3rps-2min_cache.out
echo "Load test for cache [3rps/2min] is finished."

