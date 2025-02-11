# Removendo Node3 com Helm
echo "🗑 Removendo Node3 MongoDB..."
helm uninstall node3-mongo --namespace brldigital-t

echo "🗑 Removendo Node3 PostgreSQL..."
helm uninstall node3-postgre --namespace brldigital-t

echo "🗑 Removendo Node3 Node..."
helm uninstall node3-node --namespace brldigital-t

echo "🗑 Removendo Node3 Executor..."
helm uninstall node3-executor --namespace brldigital-t

echo "🗑 Removendo Node3 Prover..."
helm uninstall node3-prover --namespace brldigital-t

echo "✅ Todas as remoções foram concluídas!"

