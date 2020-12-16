#!/bin/bash
set -e;

mongo --eval "rs.initiate()"