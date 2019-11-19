sgroups:
  us-west-1:
    internal-web:
      description: "Internal HTTP/HTTPS Access"
      vpc_name: demo-saltconf19
      rules:
        rule1:
          ip_protocol: tcp
          from_port: 443
          to_port: 443
          cidr_ip:
            - 10.0.0.0/16
        rule2:
          ip_protocol: tcp
          from_port: 80
          to_port: 80
          cidr_ip:
            - 10.0.0.0/16
    public-web:
      description: "Public HTTP/HTTPS Access"
      vpc_name: demo-saltconf19
      rules:
        rule1:
          ip_protocol: tcp
          from_port: 443
          to_port: 443
          cidr_ip:
            - 0.0.0.0/0
        rule2:
          ip_protocol: tcp
          from_port: 80
          to_port: 80
          cidr_ip:
            - 0.0.0.0/0
    world-http:
      description: "Public HTTP Access"
      vpc_name: demo-saltconf19
      rules:
        rule1:
          ip_protocol: tcp
          from_port: 80
          to_port: 80
          cidr_ip:
            - 0.0.0.0/0
