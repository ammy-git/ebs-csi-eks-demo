# ebs-csi-eks-demo

```
eksctl create addon --name aws-ebs-csi-driver --cluster your-cluster-name --service-account-role-arn arn:aws:iam::111122223333:role/AmazonEKS_EBS_CSI_DriverRole --force
```

```
docker build -t your-registry/ebs-demo:latest .
docker push your-registry/ebs-demo:latest
```

```
kubectl apply -f storage-class.yaml
kubectl apply -f pvc.yaml
kubectl apply -f deployment.yaml
```


```
kubectl get pvc
kubectl get pods
kubectl describe pod <pod-name>
```
