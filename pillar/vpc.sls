vpc:
  us-west-1:
    demo-saltconf19:
      cidr_block: 10.0.0.0/16
      internet_gw: true

subnets:
  us-west-1:
    demo-saltconf19:
      public-b:
        cidr_block: 10.0.2.0/24
        availability_zone: us-west-1b
        nat_gw: true
      public-c:
        cidr_block: 10.0.3.0/24
        availability_zone: us-west-1c
      private-b:
        cidr_block: 10.0.5.0/24
        availability_zone: us-west-1b
      private-c:
        cidr_block: 10.0.6.0/24
        availability_zone: us-west-1c

routes:
  us-west-1:
    public:
      vpc_name: demo-saltconf19
      subnet_names:
        - public-b
        - public-c
    private:
      vpc_name: demo-saltconf19
      routes:
        route1:
          destination_cidr_block: 0.0.0.0/0
          nat_gateway_subnet_name: public-b
      subnet_names:
        - private-b
        - private-c
