#!/bin/sh

###########################################################
# Variable
###########################################################
#export GOTRACEBACK=single
GOTRACEBACK=all
CURRENTDIR=`pwd`

###########################################################
# Update all package
###########################################################
#go get -u -v ./...


###########################################################
# Adjust version dependency of projects
###########################################################
#cd ${GOPATH}/src/github.com/aws/aws-sdk-go
#git checkout v0.9.17
#git checkout master


###########################################################
# go fmt and go vet
###########################################################
go fmt ./...
go vet ./...
#go vet `go list ./... | grep -v '/vendor/'`


###########################################################
# go lint
###########################################################
# it's too strict
#golint ./...


###########################################################
# go list for check import package
###########################################################
#go list -f '{{.ImportPath}} -> {{join .Imports "\n"}}' ./xxxx.go


###########################################################
# go build and install
###########################################################
#build and install
#go build -i -v -o ./main ./gotestfile/main.go
go build -i -v -o ${GOPATH}/bin/gotestfile ./gotestfile/main.go

go build -i -v -o ${GOPATH}/bin/godepen ./godependency/main.go


###########################################################
# go run
###########################################################
#./main -n abc

###########################################################
# cross-compile for linux
###########################################################
#GOOS=linux go install -v ./...


###########################################################
# godoc
###########################################################
#godoc -http :8000
#http://localhost:8000/pkg/


###########################################################
# test
###########################################################
