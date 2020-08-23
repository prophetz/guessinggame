function readFilesCount() {
    echo $(ls | wc -l)
}

function compare() {
  enteredNumber=$1
  rightNumber=$2

  if [[ $enteredNumber -gt $rightNumber ]]; then
    echo "Entered number of files is too high, please try again"
  elif [[ $enteredNumber -lt $rightNumber ]]; then
    echo "Entered number of files is too low, please try again"
  else
    echo "Congratulations! You are right."
  fi
}

echo "How many files in current folder?"

real_files_count=$(readFilesCount)

while [[ ! $guess_files_count -eq $real_files_count ]]; do
  read guess_files_count
  compare guess_files_count real_files_count
done
