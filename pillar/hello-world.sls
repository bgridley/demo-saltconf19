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
