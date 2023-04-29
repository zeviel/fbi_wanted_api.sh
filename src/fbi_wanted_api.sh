#!/bin/bash

api="https://api.fbi.gov/wanted/v1"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_wanted() {
    # 1 - page: (integer): <page - default: 1>
    curl --request GET \
        --url "$api/list?page=${1:-1}" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
