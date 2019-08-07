#!/bin/bash

jq 'del(.components.schemas |..| .additionalProperties?)' $1 > $1
