#!/usr/bin/env bats
FILES_TO_CHECK=(
    "a.pdf"
    "a.zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
}

@test "--profile, Loads a Validation Profile from given path and exits if loading fails" {

    for file in "${FILES_TO_CHECK[@]}"; do
        profile_check $file
    done
}

profile_check() {
    echo "Running: $1" >&3
    run verapdf/verapdf --profile verapdf/profiles/veraPDF-validation-profiles-rc-1.28/PDF_A/PDFA-4.xml $FILE_PATH/$1
    assert_output --partial 'profileName="PDF/A-4 validation profile"'
    [ "$status" -eq 1 ]
}
