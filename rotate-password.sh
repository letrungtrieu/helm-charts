htpasswd -c mynewcreds admin
#enter and reenter password*
cat mynewcreds | base64 > mynewcreds64
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: my-basic-auth-secret
  namespace: kimloi
data:
  users: |2
    $(head -1 mynewcreds64 | tail -1)
EOF