# CD12352 - Infrastructure as Code Project Solution

# vola@fpt.com

## Spin up instructions

### To create the udagram network, use the following command:

```bash
./run.sh deploy cd12352-udagram-network network.yml network-parameters.json
```

### To create the udagram server, use the following command:

```bash
./run.sh deploy cd12352-udagram-server udagram.yml udagram-parameters.json
```

### To delete the udagram network, use the following command:

```bash
./run.sh delete cd12352-udagram-network
```

### To delete the udagram infrastructure, use the following command:

```bash
./run.sh delete cd12352-udagram-server
```

<!-- Add URL of the DNS Name -->
[Diagram](Diagram.drawio.png)

## URL of the working application:
http://cd1235-WebAp-ed6LGEHT6I2C-1616128114.us-east-1.elb.amazonaws.com
