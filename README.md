# Deploy Script for shuoj

## File Structure

```bash
.
├── LICENSE
├── README.md
├── deploy.sh
├── single-node-docker-compose.yml
└── init
    └── mysql
        └── init.sql

2 directories, 5 files
```

## Script

### First Deploy

```bash
git clone https://github.com/shuoj/deploy.git
cd deploy
git clone https://github.com/shuoj/shu-online-judge-fe.git
export LOCAL_HOST=192.168.3.225 # your local/public ip address, DO NOT use localhost
sudo docker-compose -f single-node-docker-compose.yml up -d --build # --build is necessary when update frontend code
```

### Update Code

#### Frontend

```bash
# cd xx/deploy
cd shu-online-judge-fe
git pull -v --rebase origin master
cd ..
export LOCAL_HOST=192.168.3.225 # your local/public ip address, DO NOT use localhost
sudo docker-compose -f single-node-docker-compose.yml up -d --build # --build is necessary when update frontend code
```

#### Others

```yaml
# ...
backend:
  image: registry.cn-hangzhou.aliyuncs.com/kastnerorz/shu-online-judge:v1.0-rc2 # change to latest version
# ...
```

```bash
export LOCAL_HOST=192.168.3.225 # your local/public ip address, DO NOT use localhost
sudo docker-compose -f single-node-docker-compose.yml up -d
```
