#!/bin/bash

pushd nginx/contents
ln -s ../../../bitsmist-js_v1 .
ln -s ../../../bitsmist-js-extras_v1 .
ln -s ../../../acobook_app .
popd

pushd phpfpm/contents
ln -s ../../../bitsmist-server_v1 .
ln -s ../../../acobook_server .
ln -s ../../../acobook_api .
popd
