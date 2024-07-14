            


    command: tail -f /dev/null


docker compose -f kubernetes_compose/docker-compose.yml up --build -d

- From MacOS (IP: 10.10.101.85) to docker master
ssh root@10.10.101.85 -p 2222

- From master to master2
ssh root@host.docker.internal -p 2223

- From master to master3
ssh root@host.docker.internal -p 2224