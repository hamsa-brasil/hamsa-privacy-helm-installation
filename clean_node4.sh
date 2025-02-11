# Removendo Node4 com Helm
echo "🗑 Removendo Node4 MongoDB..."
helm uninstall node4-mongo --namespace brldigital-t

echo "🗑 Removendo Node4 PostgreSQL..."
helm uninstall node4-postgre --namespace brldigital-t

echo "🗑 Removendo Node4 Node..."
helm uninstall node4-node --namespace brldigital-t

echo "🗑 Removendo Node4 Executor..."
helm uninstall node4-executor --namespace brldigital-t

echo "🗑 Removendo Node4 Prover..."
helm uninstall node4-prover --namespace brldigital-t

echo "✅ Todas as remoções foram concluídas!"

