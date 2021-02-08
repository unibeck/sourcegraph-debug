```
export PROJECT_SUB_DIR=
docker-compose -f docker-compose-sourcegraph-local.yml up
```

```
{
  // url is the http url to 'src serve-git'.
  // url should be reachable by Sourcegraph.
  "url": "http://sourcegraph-src-cli:3434",

  // Do not change this. Sourcegraph uses this as a signal that url is 'src serve'.
  "repos": ["src-serve"]
}
```

docker exec -it sourcegraph-server /bin/sh

docker run -it --rm=true --publish 3435:3434 --volume $PWD:/data/repos:ro --entrypoint /bin/sh sourcegraph/src-cli:latest

docker run --publish 7080:7080 --publish 127.0.0.1:3370:3370 --rm --volume ~/.sourcegraph/config:/etc/sourcegraph --volume ~/.sourcegraph/data:/var/opt/sourcegraph sourcegraph/server:3.24.1
docker run --rm=true --publish 3434:3434 --volume ~/projects:/data/repos:ro sourcegraph/src-cli:latest serve-git /data/repos

