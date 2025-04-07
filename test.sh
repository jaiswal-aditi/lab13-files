#!/bin/bash

echo "Running tests..."
echo

# Run your election program with input redirected from a file
./election < test/input_election.txt > test/output_election.txt

# Exit status check
if [ $? -ne 0 ]; then
  echo "Fail: Program did not exit with 0"
  exit 1
else
  echo "Pass: Program exited successfully"
fi

# Read output
output=$(cat test/output_election.txt | tr -d '[:space:]')

# Expected normalized output (no spaces/newlines) — change this if needed
expected="EmmaLee15030.00%LilyChen15030.00%JohnSmith12024.00%AliKhan10020.00%BenJones8016.00%Thereisatiebetween:EmmaLee,LilyChenAllarewinners.Resultswrittento'results.txt'successfully."

# Normalize expected output too
expected_normalized=$(echo "$expected" | tr -d '[:space:]')

# Check if the output contains the expected normalized output
if [[ "$output" == *"$expected_normalized"* ]]; then
  echo "Pass: Output matches expected result (tie case)"
else
  echo "Fail: Output did not match expected result"
  echo "Expected (normalized):"
  echo "$expected_normalized"
  echo
  echo "Got (normalized):"
  echo "$output"
  exit 1
fi

echo
echo "All tests passed."
exit 0
