credentials=$(aws sts assume-role --role-arn "arn:aws:iam::014516479662:role/pod-assumable-admin-role" --role-session-name "tstrole" --output json)
export AWS_ACCESS_KEY_ID=$(echo $credentials | jq -r '.Credentials.AccessKeyId')
export AWS_SECRET_ACCESS_KEY=$(echo $credentials | jq -r '.Credentials.SecretAccessKey')
export AWS_SESSION_TOKEN=$(echo $credentials | jq -r '.Credentials.SessionToken')
aws sts get-caller-identity
