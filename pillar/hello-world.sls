kcs:
  us-west-1:
    hello-world:
      cnames:
        - name: saltconf19-demo.kuali.co
          zone: kuali.co.
          ttl: 3600
      container_count: 1
      container_definitions:
        essential: true
        image: hello-world
        memoryReservation: 256
        name: hello-world
        portMappings:
          - containerPort: 80
            hostPort: 0
      environment: prod
      lb_protocol: HTTP
      team: ops
      scheme: internet-facing
      autoscaling:
        min_capacity: 2
        max_capacity: 4
        target_value: 40
        metric_spec: ECSServiceAverageCPUUtilization
      health_check:
        health_check_protocol: HTTP
        health_check_port: traffic-port
        health_check_path: /health
        health_check_interval_seconds: 10
        health_check_timeout_seconds: 5
        healthy_threshold_count: 3
        unhealthy_threshold_count: 5
        http_code: '200'
      force_new_deployment: True
