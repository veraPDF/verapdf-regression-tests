setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/399
@test "#399, CLI: --profile argument, external options check" {
    run verapdf/verapdf -p verapdf/profiles/veraPDF-validation-profiles-rc-1.28/PDF_A/PDFA-4.xml $BATS_TEST_DIRNAME/a.pdf

    [ "$status" -eq 0 ]
    assert_output --partial '<batchSummary totalJobs="1" failedToParse="0" encrypted="0" outOfMemory="0" veraExceptions="0">'
}

# https://github.com/veraPDF/veraPDF-library/issues/399
@test "#399, CLI: --profile argument, internal options check" {
    run verapdf/verapdf -f 4 $BATS_TEST_DIRNAME/a.pdf

    [ "$status" -eq 0 ]
    assert_output --partial '<batchSummary totalJobs="1" failedToParse="0" encrypted="0" outOfMemory="0" veraExceptions="0">'
}
