# Removendo Node1 com Helm
echo "🗑 Removendo Node1 MongoDB..."
helm uninstall node1-mongo --namespace brldigital-t

echo "🗑 Removendo Node1 PostgreSQL..."
helm uninstall node1-postgre --namespace brldigital-t

echo "🗑 Removendo Node1 Node..."
helm uninstall node1-node --namespace brldigital-t

echo "🗑 Removendo Node1 Executor..."
helm uninstall node1-executor --namespace brldigital-t

echo "🗑 Removendo Node1 Prover..."
helm uninstall node1-prover --namespace brldigital-t"

echo "✅ Todas as remoções foram concluídas!"