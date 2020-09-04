package main

import (
	"context"
	"github.com/aws/aws-lambda-go/events"

	"github.com/jjoc007/poc-s3-lambda-events-golang-terraform-aws/log"

	"github.com/aws/aws-lambda-go/lambda"
)

func LambdaHandler(cxt context.Context, event *events.S3Event) (interface{}, error) {
	log.Logger.Info().Msg("Start lambda Add event S3 to folder 3")
	log.Logger.Info().Msgf("s3 event %v", event)

	return "success", nil
}

func main() {
	lambda.Start(LambdaHandler)
}
