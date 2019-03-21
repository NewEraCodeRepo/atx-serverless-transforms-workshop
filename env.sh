#!/usr/bin/env bash

if [[ "$NODE_ENV" = "development" ]]
  then export FTP_HOST='ftp.drivehq.com'
       export FTP_PASSWORD='A3]7pHbi2*8dTff+Q2v,KNGxy$y64(/khE4v'
  else export FTP_HOST='localhost'
       export FTP_PASSWORD='password'
fi

export FILENAME='43353_3555087_1_cmp_template.txt.gz'
export FTP_PORT='21'
export FTP_REMOTE_PATH='/43353/'
export FTP_USER='atxworkshop'
export S3_BUCKET='atxworkshop-from-ftp'
export ATHENA_S3_BUCKET='atxworkshop-from-athena'
export AWS_PROFILE='serverless-admin'
