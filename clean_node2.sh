# Removendo Node2 com Helm
echo "🗑 Removendo Node2 MongoDB..."
helm uninstall node2-mongo --namespace brldigital-t

echo "🗑 Removendo Node2 PostgreSQL..."
helm uninstall node2-postgre --namespace brldigital-t

echo "🗑 Removendo Node2 Node..."
helm uninstall node2-node --namespace brldigital-t

echo "🗑 Removendo Node2 Executor..."
helm uninstall node2-executor --namespace brldigital-t

echo "🗑 Removendo Node2 Prover..."
helm uninstall node2-prover --namespace brldigital-t

echo "✅ Todas as remoções foram concluídas!"
