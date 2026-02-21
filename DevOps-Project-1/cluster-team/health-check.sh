#!/bin/bash
echo "=== NODE HEALTH ==="
kubectl get nodes
echo ""
echo "=== RESOURCE USAGE ==="
kubectl top nodes
echo ""
echo "=== UNHEALTHY PODS ==="
kubectl get pods -A | grep -v "Running\|Completed"
echo ""
echo "=== ARGOCD STATUS ==="
kubectl get applications -n argocd
echo ""
echo "=== DEV QUOTA ==="
kubectl describe resourcequota -n mini-finance-dev
echo ""
echo "=== PROD QUOTA ==="
kubectl describe resourcequota -n mini-finance-prod