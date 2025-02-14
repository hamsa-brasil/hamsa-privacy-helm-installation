echo "🔹 Instalando Node4 MongoDB..."
helm install node4-mongo --namespace brldigital-t -f mongodb/values-node4-mongodb.yaml mongodb/ 
echo "✅ Node4 MongoDB instalado com sucesso!"

echo "🔹 Instalando Node4 PostgreSQL..."
helm install node4-postgre --namespace brldigital-t -f postgres/values-node4-postgresql.yaml postgres/ 
echo "✅ Node4 PostgreSQL instalado com sucesso!"

echo "🔹 Instalando Node4 Executor..."
helm install node4-executor --namespace brldigital-t -f executor/values-node4-executor.yaml executor/ 
echo "✅ Node4 Executor instalado com sucesso!"

echo "🔹 Instalando Node4 Prover..."
helm install node4-prover --namespace brldigital-t -f prover/values-node4-prover.yaml prover/ 
echo "✅ Node4 Prover instalado com sucesso!"

echo "🔹 Instalando Node4 Node..."
helm install node4-node --namespace brldigital-t -f node/values-node4-node.yaml node/ 
echo "✅ Node4 Node instalado com sucesso!"

echo "🚀 Todas as instalações foram concluídas!"
