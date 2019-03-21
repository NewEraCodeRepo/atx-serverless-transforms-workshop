# ATX Serverless Transforms Workshop

**Presentation:**

[From CSV to DynamoDB - Serverless transforms that don't break the bank](https://slides.com/jjacobs/deck-6/fullscreen?token=GHSaxi_R)

Code from the March 2019 [ATX Serverless Meetup](https://www.meetup.com/ATX-Serverless/) Transforms Workshop

This is a serverless data pipeline that:

 - Run a nightly scheduled lambda to pull a headerless pipe delimited file from an external FTP drive to an S3 bucket
 - Run lambdas that execute Athena queries to clean up data
 - Run a lambda to import csv to DynamoDB

IMPORTANT - this won't work unless the Athena Settings have the s3 bucket defined as: `s3:\\atx-workshop-athena-dev\results`.

Uses the [Serverless Framework](https://serverless.com/)
 
   with a number of plugins:
   - [serverless-pseudo-parameters](https://github.com/svdgraaf/serverless-pseudo-parameters)
   - [serverless-plugin-lambda-dead-letter](https://github.com/gmetzker/serverless-plugin-lambda-dead-letter)
   - [serverless-plugin-tracing](https://github.com/alex-murashkin/serverless-plugin-tracing)
   - [serverless-plugin-existing-s3](https://github.com/matt-filion/serverless-external-s3-event)
   - [serverless-s3-remover](https://github.com/sinofseven/serverless-s3-remover)
  
   for local development:
   - [serverless-dynamodb-local](https://github.com/99xt/serverless-dynamodb-local)
   - [serverless-offline](https://github.com/dherault/serverless-offline)
   - [serverless-s3-local](https://github.com/ar90n/serverless-s3-local)
   - [serverless-offline-sns](https://github.com/mj1618/serverless-offline-sns)

## Setup

- Install serverless clis:

```bash
npm install -g serverless
```
- Install node modules:

```bash
npm install
```

## Run

Locally:

```bash
docker-compose up -d
sls offline start 
```

## Deploy

Development:

```bash
serverless deploy --stage dev
serverless s3deploy --stage dev
```

