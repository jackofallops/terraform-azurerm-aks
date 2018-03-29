kind: Service
apiVersion: v1
metadata:
  name: ${deployment_name} # This should match the nginx deployment name or it will create a new Load Balancer
  namespace: ${k8snamespace}
  labels:
    app: ${deployment_name} # This should match the nginx deployment name or it will create a new Load Balancer
spec:
  externalTrafficPolicy: Local
  type: LoadBalancer
  selector:
    app: ${deployment_name} # This should match the nginx deployment name or it will create a new Load Balancer
  ports:
  - name: http
    port: 80
    targetPort: http
  - name: https
    port: 443
    targetPort: https
