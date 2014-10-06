#!/bin/sh

export SECRET_KEY_BASE=`rake secret`
bundle exec rackup -p 4567
