echo "🔹 Instalando Node3 MongoDB..."
helm install node3-mongo --namespace brldigital-t -f mongodb/values-node3-mongodb.yaml mongodb/ --debug --wait
echo "✅ Node3 MongoDB instalado com sucesso!"

echo "🔹 Instalando Node3 PostgreSQL..."
helm install node3-postgre --namespace brldigital-t -f postgres/values-node3-postgresql.yaml postgres/ --debug --wait
echo "✅ Node3 PostgreSQL instalado com sucesso!"

echo "🔹 Instalando Node3 Executor..."
helm install node3-executor --namespace brldigital-t -f executor/values-node3-executor.yaml executor/ --debug --wait
echo "✅ Node3 Executor instalado com sucesso!"

echo "🔹 Instalando Node3 Prover..."
helm install node3-prover --namespace brldigital-t -f prover/values-node3-prover.yaml prover/ --debug --wait
echo "✅ Node3 Prover instalado com sucesso!"

echo "🔹 Instalando Node3 Node..."
helm install node3-node --namespace brldigital-t -f node/values-node3-node.yaml node/ --debug --wait
echo "✅ Node3 Node instalado com sucesso!"

echo "🚀 Todas as instalações foram concluídas!"
