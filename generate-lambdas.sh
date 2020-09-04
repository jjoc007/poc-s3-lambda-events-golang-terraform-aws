#!/bin/bash

cd ~/Documentos/go-experts/poc/poc-s3-lambda-events-golang-terraform-aws/lambdas
CGO_ENABLED=0 GOOS=linux go build -mod=readonly -v -o ~/Documentos/go-experts/poc/poc-s3-lambda-events-golang-terraform-aws/terraform/lambdas/dist/poc_s3_event_f1_lambda/main functions/folder1/main.go
CGO_ENABLED=0 GOOS=linux go build -mod=readonly -v -o ~/Documentos/go-experts/poc/poc-s3-lambda-events-golang-terraform-aws/terraform/lambdas/dist/poc_s3_event_f2_lambda/main functions/folder2/main.go
CGO_ENABLED=0 GOOS=linux go build -mod=readonly -v -o ~/Documentos/go-experts/poc/poc-s3-lambda-events-golang-terraform-aws/terraform/lambdas/dist/poc_s3_event_f3_lambda/main functions/folder3/main.go
