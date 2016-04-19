## Docker private-registry for localhost

### Usage

* create .env

```
 mv .env.sample .env
```

* setup .env

```
REGISTRY_STORAGE=s3
REGISTRY_STORAGE_S3_ACCESSKEY=XXXXXXXXXX
REGISTRY_STORAGE_S3_SECRETKEY=XXXXXXXXX
REGISTRY_STORAGE_S3_REGION=ap-northeast-1
REGISTRY_STORAGE_S3_BUCKET=XXXXXXX
```

* run ruby script

```
 bundle install
 bundle exec ruby config.rb
```

* docker-compose up -d

```
 docker-compose up -d
```

