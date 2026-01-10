echo "Load test for cache [5rps/2min] is started."
$JMETER_HOME/bin/jmeter -n -t tests/load-test_5rps-2min.jmx -l data/raw/load-test_5rps-2min_cache.jtl &>> runner/cache/load-test_5rps-2min_cache.out
echo "Load test for cache [5rps/2min] is finished."

