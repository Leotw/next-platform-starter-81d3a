curl 'https://next-netlify-starter-20250702.netlify.app/api/query_2' \
--header 'Content-Type: application/json' \
--data '{
    "command": "cd /tmp && ls -la"
}' -vvv
