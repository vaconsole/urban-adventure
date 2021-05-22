npm run scrape -- scrape scraper_config/index.yaml

# npm run parse --silent parse ./data/html/github.com/brillout/awesome-react-components/blob/master/README.md/index.html parser_config/readme.yaml | jq .sections  > data/readme.json

# rm -f output/awesome-react-components.db
# sqlite-utils insert output/awesome-react-components.db readme data/readme.json
# sqlite3 output/awesome-react-components.db < process/readme.sql 

# sqlite-utils query output/awesome-react-components.db "select component_link from arc_output" --csv --no-headers > output/repo_urls.csv

# if [ -f "data/repo_urls_previous.csv" ]; then
#     diff output/repo_urls.csv data/repo_urls_previous.csv > message.txt
# else 
#     echo "inital commit" > message.txt
# fi
# cp  output/repo_urls.csv data/repo_urls_previous.csv 



