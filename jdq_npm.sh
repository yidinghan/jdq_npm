#!/bin/bash

{

if  [ $(curl -q ipinfo.io/country | grep 'HK') ]; then
    npm --registry=https://registry.npm.taobao.org --cache=$HOME/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=$HOME/.cnpmrc "$@"
else
    npm "$@"
fi

}
