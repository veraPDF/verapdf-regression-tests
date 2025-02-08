#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

}

@test "--version, Displays veraPDF version information" {

    run verapdf/verapdf --version

    [ "$status" -eq 0 ]
    assert_output --partial 'Developed and released by the veraPDF Consortium'
    assert_output --partial 'Funded by the PREFORMA project'
    assert_output --regexp '^veraPDF [1-9].[1-9][0-9].[0-9]-RC[1-9]([0-9][0-9]?)?'

}
