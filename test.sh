exercise="back-squat"
search_for_exercise(){
result=$(jq --arg exercise "$exercise" \
  '[.exercises[] | select(.exercise == $exercise)]' \
  libraryChatGpt.json)

echo $result
}




search_for_exercise
