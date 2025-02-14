echo "🔹 Instalando Node2 MongoDB..."
helm install node2-mongo --namespace brldigital-t -f mongodb/values-node2-mongodb.yaml mongodb/ 
echo "✅ Node2 MongoDB instalado com sucesso!"

echo "🔹 Instalando Node2 PostgreSQL..."
helm install node2-postgre --namespace brldigital-t -f postgres/values-node2-postgresql.yaml postgres/ 
echo "✅ Node2 PostgreSQL instalado com sucesso!"

echo "🔹 Instalando Node2 Executor..."
helm install node2-executor --namespace brldigital-t -f executor/values-node2-executor.yaml executor/ 
echo "✅ Node2 Executor instalado com sucesso!"

echo "🔹 Instalando Node2 Prover..."
helm install node2-prover --namespace brldigital-t -f prover/values-node2-prover.yaml prover/ 
echo "✅ Node2 Prover instalado com sucesso!"

echo "🔹 Instalando Node2 Node..."
helm install node2-node --namespace brldigital-t -f node/values-node2-node.yaml node/ 
echo "✅ Node2 Node instalado com sucesso!"

echo "🚀 Todas as instalações foram concluídas!"