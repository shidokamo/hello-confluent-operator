CONFLUENT_OPERATOR_DIR=./confluent-operator/helm

operator:
	helm install -f ${CONFLUENT_OPERATOR_DIR}/providers/gcp.yaml \
		--name operator \
		--namespace operator \
		--set operator.enabled=true \
		${CONFLUENT_OPERATOR_DIR}/confluent-operator

patch:
	kubectl -n operator patch serviceaccount default -p '{"imagePullSecrets": [{"name": "confluent-docker-registry" }]}'

zookeeper:
	helm install \
		-f ${CONFLUENT_OPERATOR_DIR}/providers/gcp.yaml \
		--name zookeeper \
		--namespace operator \
		--set zookeeper.enabled=true \
		${CONFLUENT_OPERATOR_DIR}/confluent-operator
