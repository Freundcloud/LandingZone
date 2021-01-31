#!/bin/bash
#DEV
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/46b2dfbe-fe9e-4433-b327-b2dc32c8af5e"
#SANDBOX
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/089a59db-9910-4e4a-93ce-b557ad910bb2"
#PRD
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/e5674b62-f8bd-4eaf-9e78-f4ce7ae3aa3c"