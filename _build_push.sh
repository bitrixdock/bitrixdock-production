export HASH=${CI_COMMIT_SHA:0:7} && \
docker-compose -f docker-compose.prod.yml -f docker-compose.build.yml build && \
docker-compose -f docker-compose.prod.yml -f docker-compose.build.yml push --ignore-push-failures && \
docker-compose -f docker-compose.prod.yml up -d

