kubectl port-forward svc/camunda-job-lb 9080:8080 -n camunda

sleep 5

hey -c 100 -z 30m http://localhost:9080/engine-rest/process-definition