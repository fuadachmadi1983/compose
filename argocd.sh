kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# access ArgoCD UI
kubectl get svc -n argocd
kubectl port-forward svc/argocd-server 8080:443 -n argocd

# login with admin user and below token (as in documentation):
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 --decode && echo

# you can change and delete init password
UVI0V2NBblZaNmM3QUhycA==
QR4WcAnVZ6c7AHrp


kubectl -n argocd get all

kubectl -n argocd edit svc argocd-server
ganti clusterip menjadi node port

kubectl get nodes -o wide

kubectl scale deploy nginx --replicas 3

kubectl scale deploy myapp --replicas 3

