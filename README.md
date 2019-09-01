# Kafka on GKE
Kafka を GKE 上にデプロイするサンプルです。

## セットアップ
Helm をインストールして、Tiller をクラスタにデプロイしてください。

## Confluent Operator のダウンロード
(Official Doc)[https://docs.confluent.io/current/installation/operator/co-deployment.html]

```
wget https://platform-ops-bin.s3-us-west-1.amazonaws.com/operator/confluent-operator-20190726-v0.65.0.tar.gz
```

## Admin Role の設定
```
kubectl apply -f create-helm-service-account.yaml
```


