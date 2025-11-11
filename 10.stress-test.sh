kubectl port-forward svc/camunda-job-lb 9080:8080 -n camunda

sleep 5

echo ""
echo "================================"

echo "Starting stress test on Camunda REST API..."

echo "Sending requests to http://localhost:9080/engine-rest/process-definition"

hey -c 1000 -z 30m http://localhost:9080/engine-rest/process-definition