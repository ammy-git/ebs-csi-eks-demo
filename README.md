# ebs-csi-eks-demo


```
eksctl utils associate-iam-oidc-provider --cluster eks-ebs-csi-cluster  --approve --region us-east-2
```


```
eksctl create iamserviceaccount \
  --name ebs-csi-controller-sa \
  --namespace kube-system \
  --cluster eks-ebs-csi-cluster \
  --attach-policy-arn arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy \
  --approve \
  --role-only \
  --role-name AmazonEKS_EBS_CSI_Driver_Role \
  --region us-east-2
```


```
eksctl create addon --name aws-ebs-csi-driver --cluster eks-ebs-csi-cluster --service-account-role-arn arn:aws:iam::251620460948:role/AmazonEKS_EBS_CSI_Driver_Role --force
```

