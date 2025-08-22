#!/usr/bin/env bash

# bash-spec wrapper with some extras
source "$COVE/cove-specs/bash-spec-2/bash-spec.sh"

# run test and keep results for forensics
setup_test() {
    TEST_DIR="$here/test/${1:-}"
    rm -rf "$TEST_DIR" 2> /dev/null
    mkdir -p "$TEST_DIR"
    cd "$TEST_DIR"
    
    # Copy fraggle state types for tests
    cp "$here/fraggle-state.ncl" .
    
    # Create sample config JSON for testing
    SAMPLE_JSON=$(nickel export --format json "$SAMPLE_CONFIG")
    export SAMPLE_JSON
    export TEST_DIR
}

teardown_test() {
   :
}

mock_date() {
    local date_str="$1"
    local hour="$2" 
    local day="$3"
    
    cat > "$TEST_DIR/date" << EOF
#!/bin/bash
case "\$1" in
    "+%H") echo "$hour" ;;
    "+%u") echo "$day" ;;
    "+%Y-%m-%d") echo "$date_str" ;;
    "+%Y-W%U") echo "2024-W33" ;;
    *) /usr/bin/date "\$@" ;;
esac
EOF
    chmod +x "$TEST_DIR/date"
    export PATH="$TEST_DIR:$PATH"
}

jq_count_entries_kv () {
    local key="$1"
    local value="$2"
    echo "$3" | jq "[.[] | select(.\"$key\" == \"$value\")] | length"
}

# Custom matchers for bash-spec-2
to_be_valid_json() {
    local actual="$1"
    echo "$actual" | jq . >/dev/null 2>&1
}

# to_match ??
to_contain_pattern() {
    local actual="$1"
    local pattern="$2"
    echo "$actual" | grep -q "$pattern"
}

