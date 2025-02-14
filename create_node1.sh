echo "🔹 Instalando Node1 MongoDB..."
helm install node1-mongo --namespace brldigital-t -f mongodb/values-node1-mongodb.yaml mongodb/
echo "✅ Node1 MongoDB instalado com sucesso!"

echo "🔹 Instalando Node1 PostgreSQL..."
helm install node1-postgre --namespace brldigital-t -f postgres/values-node1-postgresql.yaml postgres/
echo "✅ Node1 PostgreSQL instalado com sucesso!"

echo "🔹 Instalando Node1 Executor..."
helm install node1-executor --namespace brldigital-t -f executor/values-node1-executor.yaml executor/
echo "✅ Node1 Executor instalado com sucesso!"

echo "🔹 Instalando Node1 Prover..."
helm install node1-prover --namespace brldigital-t -f prover/values-node1-prover.yaml prover/
echo "✅ Node1 Prover instalado com sucesso!"

echo "🔹 Instalando Node1 Node..."
helm install node1-node --namespace brldigital-t -f node/values-node1-node.yaml node/
echo "✅ Node1 Node instalado com sucesso!"

echo "🚀 Todas as instalações foram concluídas!"
