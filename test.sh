#!/bin/bash

echo "Running tests..."
echo

# Run program and capture output
output=$(./fileio < test/test_input.txt)

# Normalize: remove all non-numeric/char data
normalized_output=$(echo "$output" | grep -Eo '[0-9]+\.[0-9]+|[0-9]+|[A-Za-z]' | tr -d '\n')

# Expected (flattened)
expected_output="423.14A257.50B1001.23C"

if [ "$normalized_output" == "$expected_output" ]; then
  echo "✅ Test passed"
  exit 0
else
  echo "❌ Test failed"
  echo "Expected: $expected_output"
  echo "Got     : $normalized_output"
  exit 1
fi
