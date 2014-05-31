#!/bin/bash -ex

if [ -z ${TRAVIS_JOB_ID} ]; then
    # not running under travis, stay in foreground until stopped
    npm run dev-server
else
    # running under travis, daemonize
    ( npm run test-server & ) || /bin/true
fi
