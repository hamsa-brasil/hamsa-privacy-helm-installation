# Hamsa Privacy - Helm charts installation
Hamsa Privacy helm to the solution deployment.

## Necessary tools

- Kubectl (compatible with the nodes version of the cluster) 
- Helm (Compatible with Kubernetes)
- Helmfile

## Environment variables

To deploy this solution it's necessary to deploy the necessary contracts to the L1 and get their addresses to put in `./qa-envs.yaml` file.

```yaml
L1_URL: <PUT ADDRESS HERE>
DVP_L1URL: <PUT ADDRESS HERE>
L1_CHAINID: <PUT ADDRESS HERE>

DVP_L1MATCHSCADDRESS: <PUT ADDRESS HERE>
DVP_L1TMSCADDRESS: <PUT ADDRESS HERE>
ROLLUP_VERIFYCONFIG_VERIFYCONTRACT: <PUT ADDRESS HERE>
L1_EVENTADDRESS: <PUT ADDRESS HERE>
```
## Docker images

To each node (paths called 1, 2...4 folders) it's necessary use a existing container registry with the Hamsa Privacy docker images.

```
| 1/
| --> values-{service}.yaml
```
