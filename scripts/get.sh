#!/bin/bash
set -euo pipefail  # Enable strict error handling

echo "=== Listing IAM Roles ==="
aws iam list-roles --query 'Roles[*].RoleName' --output text | tr '\t' '\n'

echo "=== Current AWS Identity ==="
aws sts get-caller-identity