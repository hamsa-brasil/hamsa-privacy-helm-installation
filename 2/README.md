# Helmfile Deployment Guide

This guide provides a basic overview of deploying multiple releases using **Helmfile**, which simplifies the management of Helm releases via a single YAML configuration file.

## Prerequisites

1. **Helm**: Ensure Helm is installed on your local system. [Helm Installation Guide](https://helm.sh/docs/intro/install/).
2. **Helmfile**: Install Helmfile, which allows you to manage Helm charts through a single declarative configuration. [Helmfile Installation Guide](https://github.com/roboll/helmfile#installation).
3. **Kubernetes Cluster**: Ensure you have access to a Kubernetes cluster for deployment.
4. **Kubeconfig**: Your Kubernetes configuration should be set up correctly for `kubectl` and Helm access.

## Structure of the Helmfile

This `helmfile.yaml` defines three releases deployed in the `bankbrasil` namespace using the same Helm chart (`../../chart`) at version `2.8.0`. Each release has a unique values file for configuration.

### Sample `helmfile.yaml`:

```yaml
releases:
  - name: node
    namespace: bankbrasil
    chart: ../chart
    version: 2.8.0
    values:
      - ./values-app-msft-executor.yaml
  
  - name: prover
    namespace: bankbrasil
    chart: ../chart
    version: 2.8.0
    values:
      - ./values-app-msft-prover.yaml
  
  - name: executor
    namespace: bankbrasil
    chart: ../chart
    version: 2.8.0
    values:
      - ./values-app-msft-prover.yaml
```

Deploying with Helmfile

To deploy the releases using Helmfile, follow these steps:

Navigate to the directory containing your helmfile.yaml.

Run the following command to sync your Helmfile configuration with the cluster:

```
helmfile sync
```

This will apply the releases to your Kubernetes cluster based on the helmfile.yaml definitions.

Managing Releases
Upgrading Releases: Modify the version in the Helmfile and run helmfile sync again to upgrade the releases.

Uninstalling Releases: To uninstall all releases defined in the Helmfile, run:

```
helmfile destroy
```