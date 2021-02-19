#!/bin/bash
PORTAL_DEPLOYMENT_NAME='paasta-portal'

bosh delete-deployment -d ${PORTAL_DEPLOYMENT_NAME} --force

bosh delete-release paasta-portal-release/2.2
